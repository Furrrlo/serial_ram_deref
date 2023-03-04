from multiprocessing import Pool, freeze_support
from subprocess import CompletedProcess, run, STDOUT, PIPE, CalledProcessError
from pathlib import Path
from typing import List
from timeit import default_timer as timer

from vivado_utils import find_project_name, get_vivado_testbenches, Testbench

project_dir = Path(".")
project = find_project_name(target_dir=project_dir)

build_dir = project_dir.joinpath("vivado_out")
build_dir.mkdir(exist_ok=True)


def run_tcl_commands(file: Path, cmds: List[str], capture_output=False) -> CompletedProcess:
    cmds = [f"open_project {project_dir.joinpath(project + '.xpr')}", *cmds]
    with open(file, "w") as fd:
        fd.writelines(cmd + '\n' for cmd in cmds)

    shellcmd = "vivado -m64 -mode batch -source " + str(file.absolute())
    return run(
        shellcmd,
        shell=True,
        stdout=PIPE if capture_output else None,
        stderr=STDOUT if capture_output else None,
        check=True
    )


run_tcl_commands(
    build_dir.joinpath("synthesis.tcl"),
    ["synth_design -top project_reti_logiche -part xc7a200tfbg484-1"])
print('\n\n', end="")

for tb in get_vivado_testbenches():
    print(f"Running simulation set {tb.simulation_set} ({list(map(lambda f: f.name, tb.vhdl_files))})... ",
          end='', flush=True)

    start = timer()
    try:
        output = run_tcl_commands(
            build_dir.joinpath(tb.simulation_set + ".tcl"),
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
