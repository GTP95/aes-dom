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

### Analysis
To analyze the project's files, run  
`$ make analyze`

### Synthesis
To synthesize the project, run  
`$ make synth`  

**Note:** this will will run the synthesis using the `synth_ice40` target. Manually change this inside the Makefile when relevant.

### Verilog
To get a Verilog netlist, run  
`$ make verilog`  

The result will be in a directory called "Verilog".


### All
To run all the above targets, just invoke make:  
`$ make`  

Or invoke the `all` target:  
`$ make all`

### Clean artifacts
To delete all the generated artifacts and go back to a clean state, run  
`$ make clean`

