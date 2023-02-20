from vunit import VUnit

vu = VUnit.from_argv()

lib = vu.add_library("lib")
lib.add_source_files("vunit-tests/*.vhd")
lib.add_source_files("serial_to_parallel_ram_dereference.srcs/sources_*/**/*.vhd")

vu.main()
