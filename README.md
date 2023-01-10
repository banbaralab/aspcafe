# aspcafe
CAFE Problems Solver Based on ASP

## Required Environment
- clingo (for basic and optimized encoding)
- asprin (for extended encoding)
- python3.5 (for checking answer)

## Usage
- Mono-objective CAFE Problem
  - Basic encoding
	``
    $ clingo vehicle_design_basic.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp
    ``
  
  - Optimized encoding
    ``
    $ clingo vehicle_design_optimized.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp
    ``
	
  if you want to enumerate optima, add clingo's option `--opt-mode=optN`
  
- Multi-objective CAFE Problem
  - Extended encoding
    ``
    $ asprin vehicle_design_extended.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp -n 0
    ``
	
- Check Answer
  Write the solutions of clingo or asprin obtained by the above command into the file, 
  and execute the following command
  ``
  $ python bin/check_ans_opt.py file
  ``


