from pathlib import Path
import re


def generate_vunit_tests(curr_dir=Path('.'),
                         folder_glob="serial_to_parallel_ram_dereference.srcs/sim_*/**/*.vhd",
                         target_dir=Path('vunit-tests-generated')):
    def generate_vunit_test(file: Path):
        if file.is_dir():
            return
        if not file.name.endswith(".vhd"):
            return

        def repl_fn(match: re.Match):
            return match.group('content')

        print("Generating vunit test from " + str(file))
        output_file = target_dir.joinpath(file.relative_to(curr_dir))
        output_file.parent.mkdir(parents=True, exist_ok=True)
        with open(file, "r") as input_fd, open(output_file, "w") as output_fd:
            output_fd.write(re.sub(r"--VUNIT%%\s*(?P<content>.*)%%--", repl_fn, input_fd.read()))

    for child in curr_dir.glob(folder_glob):
        generate_vunit_test(child)


if __name__ == '__main__':
    generate_vunit_tests()
