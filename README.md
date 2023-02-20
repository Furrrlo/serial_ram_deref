
## Running vunit tests

Running vunit requires python >3.6 and a simulator runner installed on the PATH
(I personally use GHDL).

When on Windows, I suggest running everything on WSL2, as installing Windows is 
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
python3 --version
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
