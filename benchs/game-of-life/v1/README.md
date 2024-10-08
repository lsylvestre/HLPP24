## Game of Life, v1

*The world is represented by an array of booleans.*

### Measure execution time

```
$ ./eclat -relax ../benchs/game-of-life/v1/v1.ecl  -main=chrono_main
vhdl code generated in ../target/main.vhdl 
testbench generated in ../target/tb_main.vhdl for software RTL simulation using GHDL.

$ make simul NAME=chrono_main NS=4000000
cd ../target; make NS=4000000
ghdl -a  runtime.vhdl stdlib.vhdl 
ghdl -a  chrono_main.vhdl
ghdl -a  tb_chrono_main.vhdl
ghdl -e  tb_chrono_main
ghdl -r  tb_chrono_main --vcd=tb.vcd --stop-time=4000000ns
execution time = 14402 cycles 
execution time = 28805 cycles 
execution time = 43208 cycles 
execution time = 57611 cycles 
execution time = 72014 cycles 
^C
```

### Display successive generations of the world

```
$ ./eclat -relax ../benchs/game-of-life/v1/v1.ecl  -main=test_main
$ make simul NS=4000000
cd ../target; make NS=4000000
ghdl -a  runtime.vhdl
ghdl -a  main.vhdl
ghdl -a  tb_main.vhdl
ghdl -e  tb_main
ghdl -r  tb_main --vcd=tb.vcd --stop-time=4000000ns
 
*-*----- 
-**----- 
-*------ 
-------- 
-------- 
-------- 
-------- 
-------- 

... (see trace-v1.txt)
```

### Synthesis

#### for Intel Max10 FPGA

```
$ ./eclat -relax ../benchs/game-of-life/v1/v1.ecl  -intel-max10  -main=main_intel
```

#### for Xilinx Zybo FPGA

```
$ ./eclat -relax ../benchs/game-of-life/v1/v1.ecl  -xilinx-zybo  -main=main_xilinx
```

#### for Yosys / ECP5