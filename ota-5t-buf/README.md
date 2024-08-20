# Buffer design using a 5-transistor OTA
Based on: https://github.com/mole99/ota-5t  
See also: https://cace.readthedocs.io/en/latest/tutorial/index.html  
  
The design is modified here for a unity-gain gain buffer application with a specification for the total integrated output noise. Nominal sizing is done using pre-computed lookup tables in a notebook. Sign-off with corner sweeps is done with CACE.

## Typical CACE directory structure
  
main directory: `cace`    
schematic: `xschem`    
layout: `gds`    
netlist: `netlist`    
results: `runs`   
documentation: `docs`  

The `xschem` directory has a standalone testbench for design exploration. The testbenches in the `cace` directory (under `templates`) are a modified ones that are set up in a special way to interface with CACE.  

The `netlist` directory is managed by CACE, anything run by the designer goes into xschem's netlist directory (`xschem/simulation` in this example). Note that this and other xschem paths can be set through the `xschemrc` file under `xschem`. xschem should be launched from this directory to read the rc file, which also adds the current directory to the library path. In case anyone wonders, `[file dirname [info script]]` is a tcl-cryptic way of specifying the current directory.

Given the above structure, other files used in the design process (e.g., notebook used for transistor sizing) seem to fit best in the `xschem` directory.

## Running CACE

From the root directory:

`cace --source schematic` or `cace-gui`

This example was tested with CACE 2.4.5, which requires XSCHEM commit f850877 or newer.