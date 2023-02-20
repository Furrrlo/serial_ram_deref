from vunit import VUnit
from generate_tests import generate_vunit_tests

print("Generating vunit tests from Vivado testbenches")
generate_vunit_tests()

vu = VUnit.from_argv()

lib = vu.add_library("lib")
lib.add_source_files("serial_to_parallel_ram_dereference.srcs/sources_*/**/*.vhd")
lib.add_source_files("vunit-tests/*.vhd", allow_empty=True)
lib.add_source_files("vunit-tests-generated/**/*.vhd", allow_empty=True)

# Support for std_logic_unsigned
vu.add_compile_option("ghdl.a_flags", ["-fsynopsys"])
vu.set_sim_option("ghdl.elab_flags", ["-fsynopsys"])

vu.main()
