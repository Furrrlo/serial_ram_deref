Computer engineering project for the course "Digital logic design" at Politecnico di Milano, Academic Year 2022/2023

See [the specification](./docs/PFRL_Specifica_22_23_V0.0.pdf) and the [rules](./docs/PFRL_Regole_22_23_V0.0.pdf).

Datapath design:
![datapath](./docs/datapath.svg)

FSM:
![FSM](./docs/fsm.svg)

## Running vunit tests

Running vunit requires python >3.6 and a simulator runner installed on the PATH
(I personally use GHDL).

When on Windows, I suggest running everything on WSL2, as installing GHDL on Windows is 
painful.

Installing GHDL (built from source as the version that ships in the package managers
is usually ancient):
```bash
sudo apt update && sudo apt install gnat &&
  wget https://github.com/ghdl/ghdl/releases/download/nightly/ghdl-gha-ubuntu-20.04-mcode.tgz && \
  sudo mkdir /opt/ghdl && 
  sudo tar -C /opt/ghdl -xvf ghdl-gha-ubuntu-20.04-mcode.tgz && \
  sudo ln -s /opt/ghdl/bin/* /bin && \
  rm ghdl-gha-ubuntu-20.04-mcode.tgz
```

If working correctly, you should get this
```console
foo@bar:~$ ghdl -v
GHDL 3.0.0-dev (2.0.0.r1369.gf04182410) [Dunoon edition]
 Compiled with GNAT Version: 9.4.0
 mcode code generator
Written by Tristan Gingold.

Copyright (C) 2003 - 2022 Tristan Gingold.
GHDL is free software, covered by the GNU General Public License.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

Installing python (and venv but it's optional):
```bash
sudo apt install python3 python3-venv
```
```console
foo@bar:~$ python3 --version
Python 3.8.10
```

Installing required python libs:
```bash
python3 -m venv venv && ./venv/bin/pip install -r requirements.txt
```

Then you can finally run tests
```bash
python3 run-vunit.py
```

## Running Vivado post-synthesys tests

With Vivado installed, you need to set up env variables to have Vivado on the path.

On Windows (only in batch, it does not seem to work in powershell) do:
```batch
C:\Path\to\install\dir\Xilinx\Vivado\2022.2\settings64.bat
```
On Linux:
```bash
source Path/to/install/dir/Xilinx/Vivado/2022.2/settings64
```

Then run
```bash
python3 run-vivado-post-synthesis.py
```

## Generating additional testbenches

Additional testbenches can be generated using the following script 
(curtesy of @FraMacca on Telegram, edited to fit our needs):

```console
foo@bar:~$ python3 generate_vivado_testbench.py -h
usage: Test bench generator [-h] [-s N] [-i N] [-c L] [-z] [-a] [-r P] [-m] testbench_name

Generates random tests with a certain number of iterations

positional arguments:
  testbench_name

optional arguments:
  -h, --help            show this help message and exit
  -s N, --seed N        Sets the random seed used to generate the 
                        testbench.
  -i N, --iterations N  Sets the number of iterations, random if left
                        empty.
  -z, --zeros           If flagged forces a testcase with 0 as address
                        (start = 2 clock cycles)
  -a, --full_address    If flagged forces a testcase with 1 as address
                        (start = 18 clock cycles)
  -r P, --multiple_resets P
                        Probability that a reset will be inserted during processing, 0 if left empty.
  -m, --use_example_memory
                        If flagged uses the memory provided in the example testbench
```
