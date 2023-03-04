import os
from pathlib import Path
from subprocess import CompletedProcess, run, STDOUT, PIPE, CalledProcessError
from timeit import default_timer as timer
from typing import List

from vivado_utils import find_project_name, get_vivado_testbenches

project_dir = Path(".")
project = find_project_name(target_dir=project_dir)

build_dir = project_dir.joinpath("vivado_out")
build_dir.mkdir(exist_ok=True)


def run_tcl_commands(cmd_id: str, cmds: List[str], capture_output=False) -> CompletedProcess:
    tcl_file = build_dir.joinpath(cmd_id + ".tcl")
    log_file = build_dir.joinpath(cmd_id + ".log")
    journal_file = build_dir.joinpath(cmd_id + ".jou")

    with open(tcl_file, "w") as fd:
        fd.writelines(cmd + '\n' for cmd in cmds)
    if log_file.exists():
        os.remove(log_file)
    if journal_file.exists():
        os.remove(journal_file)

    return run(
        f"vivado -m64 -mode batch "
        f"-tempDir {str(build_dir.absolute())} "
        f"-log {str(log_file.absolute())} "
        f"-journal {str(journal_file.absolute())} "
        f"-source {str(tcl_file.absolute())} "
        f"{project_dir.joinpath(project + '.xpr')}",
        shell=True,
        stdout=PIPE if capture_output else None,
        stderr=STDOUT if capture_output else None,
        check=True
    )


run_tcl_commands(
    "synthesis",
    ["synth_design -top project_reti_logiche -part xc7a200tfbg484-1"])
print('\n\n', end="")

for tb in get_vivado_testbenches():
    print(f"Running simulation set {tb.simulation_set} ({list(map(lambda f: f.name, tb.vhdl_files))})... ",
          end='', flush=True)

    start = timer()
    try:
        output = run_tcl_commands(
            tb.simulation_set,
            [
                f"launch_simulation -simset [get_filesets {tb.simulation_set} ] -mode post-synthesis -type functional",
                "run all",
                "close_sim"
            ],
            capture_output=True
        ).stdout.decode("utf-8")

    except KeyboardInterrupt:
        print('')
        print('Caught Ctrl-C shutting down')
        exit()
    except CalledProcessError as err:
        print(f'Crashed (took {(timer() - start):.1f} seconds)')
        print(err.stdout.decode("utf-8"))
        print('', flush=True)
        continue

    if 'Simulation Ended! TEST PASSATO (EXAMPLE)' not in output:
        print(f"Failed (took {(timer() - start):.1f} seconds)")
        print(output)
        continue

    print(f"Passed (took {(timer() - start):.1f} seconds)")
