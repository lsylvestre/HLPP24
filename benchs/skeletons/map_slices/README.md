## A slice-based parallel implementation of map

### Measure execution time

```
$ ./eclat ../benchs/skeletons/map_slices/map.ecl 

vhdl code generated in ../target/main.vhdl 
testbench generated in ../target/tb_main.vhdl for software RTL simulation using GHDL.
$ make simul NS=400000
cd ../target; make NS=400000
ghdl -a  runtime.vhdl
ghdl -a  main.vhdl
ghdl -a  tb_main.vhdl
ghdl -e  tb_main
ghdl -r  tb_main --vcd=tb.vcd --stop-time=400000ns
 cy=6631 
 cy=13263 
 cy=19895 
 cy=26527 
 cy=33159
^C
```

