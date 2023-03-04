from pathlib import Path

from vunit import VUnit

from generate_vunit_tests import generate_vunit_tests
from vivado_utils import get_project_src_dir

print("Generating vunit tests from Vivado testbenches")
generate_vunit_tests()
print("Finished generating vunit tests")

vu = VUnit.from_argv()

lib = vu.add_library("lib")
lib.add_source_files(str(get_project_src_dir().relative_to(Path("./"))) + "/sources_*/**/*.vhd")
lib.add_source_files("vunit-tests/*.vhd", allow_empty=True)
lib.add_source_files("vunit-tests-generated/**/*.vhd", allow_empty=True)

# Support for std_logic_unsigned
vu.add_compile_option("ghdl.a_flags", ["-fsynopsys"])
vu.set_sim_option("ghdl.elab_flags", ["-fsynopsys"])

vu.main()
