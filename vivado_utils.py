from pathlib import Path
from typing import List


def find_project_name(target_dir=Path('./')) -> str:
    candidates = list(target_dir.glob("*.xpr"))

    if len(candidates) == 0:
        raise "Couldn't find any Vivado projects in " + str(target_dir.absolute())
    if len(candidates) > 1:
        raise "Found multiple Vivado projects in " + str(target_dir.absolute()) + ": " + str(candidates)

    return candidates[0].name[0:-4]


def get_project_src_dir(working_dir=Path('./'), project=None) -> Path:
    if project is None:
        project = find_project_name(working_dir)

    return working_dir.joinpath(f"./{project}.srcs")


class Testbench:
    def __init__(self, simulation_set: str, directory: Path, vhdl_files: List[Path]):
        self.simulation_set = simulation_set
        self.directory = directory
        self.vhdl_files = vhdl_files

    def __repr__(self) -> str:
        return f"Testbench{{" \
               f"simulation_set: '{self.simulation_set}', " \
               f"directory: {self.directory}, " \
               f"vhdl_files: {str(self.vhdl_files)}" \
               f"}}"


def get_vivado_testbenches(working_dir=Path('./'),
                           project=None,
                           simulation_set_glob="sim_*") -> List[Testbench]:
    testbenches = []
    for simulation_set_path in get_project_src_dir(working_dir, project).glob(simulation_set_glob):
        testbenches.append(Testbench(
            simulation_set=simulation_set_path.name,
            directory=simulation_set_path,
            vhdl_files=list(simulation_set_path.glob("**/*.vhd"))))
    return testbenches
