# 5-transistor OTA Example
Based on: https://github.com/mole99/ota-5t  
See also: https://cace.readthedocs.io/en/latest/tutorial/index.html  
  
The design is modified here for a unity-gain gain buffer application with a specification for the total integrated output noise. Nominal sizing is done using pre-computed lookup tables in a notebook. Sign-off with corner sweeps is done with CACE.

## CACE directory structure
  
root: `..`  
documentation: `doc`  
schematic: `xschem`    
layout: `gds`    
netlist: `netlist`    
testbench: `cace`    
results: `runs`   

The `xschem` directory has a standalone testbench for design exploration. The testbench in the CACE directory (under `templates`) is a modified/simplified one that is used to interface with CACE.  

The `netlist` directory is managed by CACE, anything run by the designer goes into xschem's netlist directory (`xschem/sim` in this example). Note that this and other xschem paths are set through the `xschemrc` file under `xschem`. xschem should be launched from this directory to read the rc file, which also adds the current directory to the library path. In case anyone wonders, `[file dirname [info script]]` is a tcl-cryptic way of specifying the current directory.

Given the above structure, other files used in the design process (e.g., notebook used for transistor sizing) seem to fit best in the `xschem` directory.

## Running CACE

From the root directory:

`cace --source schematic` or `cace-gui`  
