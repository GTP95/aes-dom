# aes-dom
DOM Protected Hardware Implementation of AES

## Authors

Hannes Gross (hannes.gross@iaik.tugraz.at)

## License

Custom Commercial License or GPLv3 License.

## Build
### Dependencies
This repository provides a Makefile to build this project using Make. To use it, you will need the following dependencies:
- GNU Make
- Yosys
- GHDL
- ghdl-yosys-plugin

### Analisys
To analyze the project's files, run
```$ make analyze```

### Synthesys
To synthetize the project, run
```$ make synth```

### Verilog
To get a Verilog netlist, run
```$ make verilog```

### All
To run all the above targets, just invoke make:
```$ make```

### Clean artifacts
To delete all the generated artifacts and go back to a clean state, run
```$ make clean```




