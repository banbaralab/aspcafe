# aspcafe
aspcafe is a collection of ASP encodings for solving Vehicle Equipment Specification Problems.

### Citation

R.Takeuchi, M.Banbara, N.Tamura, and T.Schaub.
Solving Vehicle Equipment Specification Problems with Answer Set Programming.
Proceedings of the 25th International Symposium on Practical Aspects of Declarative Languages
(PADL 2023), LNCS Vol.13880, pp.232–249, 2023.
DOI: [10.1007/978-3-031-24841-2_15](http://dx.doi.org/10.1007/978-3-031-24841-2_15)

#### Required Environment
- clingo (for basic and optimized encoding)
- asprin (for extended encoding)
- python3.5 (for checking answer)

## Usage
### Mono-objective CAFE Problem
- Basic encoding
```
$ clingo vehicle_design_basic.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp
```
  
- Optimized encoding
```
$ clingo vehicle_design_optimized.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp
```
	
if you want to enumerate optima, add clingo's option `--opt-mode=optN`
  
### Multi-objective CAFE Problem
- Extended encoding
```
$ asprin vehicle_design_extended.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp -n 0
```
	
### Check Answer
Write the solutions of clingo or asprin obtained by the above command into the file, 
and execute the following command
```
$ python bin/check_ans_opt.py file
```


