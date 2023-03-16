# aspcafe
aspcafe is a collection of ASP encodings for solving Vehicle Equipment Specification Problems.

### Citing

R.Takeuchi, M.Banbara, N.Tamura, and T.Schaub.
Solving Vehicle Equipment Specification Problems with Answer Set Programming.
Proceedings of the 25th International Symposium on Practical Aspects of Declarative Languages
(PADL 2023), LNCS Vol.13880, pp.232–249, 2023.
DOI: [10.1007/978-3-031-24841-2_15](http://dx.doi.org/10.1007/978-3-031-24841-2_15)

### Requirements
- [clingo](https://potassco.org/clingo/) (version 5.5 or higher)
- [asprin](https://potassco.org/asprin/) (version 3.1.1 or higher)
- python 3 (only for solution checker)

### Sample session

#### Mono-objective CAFE Problem

```
$ clingo aspcafe_optimized.lp benchmark/tableSV.lp benchmark/tableFE.lp benchmark/ovm.lp --config=trendy -c t=85 > ovm.log
$ python3 bin/check_ans_opt.py ovm.log
.....
.....
```
The clingo's option `--opt-mode=optN` allows for enumerating optima.
  
#### Multi-objective CAFE Problem

```
$ asprin vehicle_design_extended.lp encoding/tableSV.lp encoding/tableFE.lp benchmark/ovm.lp -n 0
```

#### Multi-objective CAFE Problem considering Minimal Perturbation
