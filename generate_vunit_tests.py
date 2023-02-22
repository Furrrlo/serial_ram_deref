import shutil
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

        print("Generating vunit test from " + str(file))
        output_file = target_dir.joinpath(file.relative_to(curr_dir))
        output_file.parent.mkdir(parents=True, exist_ok=True)
        with open(file, "r") as input_fd, open(output_file, "w") as output_fd:
            output_text = input_fd.read()
            output_text = re.sub(
                r"--VUNIT%%\s*(?P<content>.*)%%--",
                lambda match: match.group('content'),
                output_text)
            output_text = re.sub(
                r"(?P<start>--VIVADO-START%%\s*\n)(?P<content>(.|\n)*?)(?P<end>\n\s*--VIVADO-END%%)",
                lambda match:
                match.group('start')
                + "".join(map(
                    lambda line: re.sub(
                        r"^(?P<space>\s*)(?P<first_char>\S)",
                        lambda inner_match: inner_match.group('space') + "-- " + inner_match.group('first_char'),
                        line),
                    match.group('content').splitlines(keepends=True)))
                + match.group('end'),
                output_text,
                flags=re.MULTILINE)
            output_fd.write(output_text)

    if target_dir.exists():
        shutil.rmtree(target_dir)

    for child in curr_dir.glob(folder_glob):
        generate_vunit_test(child)


if __name__ == '__main__':
    generate_vunit_tests()
