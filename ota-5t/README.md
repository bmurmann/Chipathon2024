  # 5-transistor OTA Example
  Based on: https://github.com/mole99/ota-5t  
  See also: https://cace.readthedocs.io/en/latest/tutorial/index.html  
  
  The design is modified here for a unity-gain gain buffer application with a specification for the total integrated output noise.

  ## CACE directory structure
  
  root: `..`  
  documentation: `doc`  
  schematic: `xschem`    
  layout: `gds`    
  netlist: `netlist`    
  testbench: `cace`    
  simulation: `ngspice`    
  logs: `ngspice/log`  
  plots: `plots`  
  reports: `reports`   

  The `xschem` directory has a standalone testbench for design exploration. The testbench in the CACE directory (under `templates`) is a modified/simplified one that is used to interface with CACE.  

Given the above structure, other files used in the design process (e.g., notebooks used for transistor sizing) seem to fit best in the `xschem` directory.