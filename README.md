# aspcafe
aspcafe is a collection of ASP encodings for solving
Vehicle Equipment Specification Problems (CAFE problems, in short).

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

#### Mono-objective CAFE Problems
The following command finds an optimal solution of a mono-objective CAFE Problem, 
where the CAFE standard value is 8.5km/L.
The clingo's option `--opt-mode=optN` will allow for enumerating optima as necessary.
```
$ clingo aspcafe_optimized.lp benchmark/tableSV.lp benchmark/tableFE.lp benchmark/ovm.lp --config=trendy -c t=85 > ovm.log
$ python3 bin/decode.py ovm.log
Optimal: 1

ANSWER: 1
Type, Option, Model1, Model2, Model3
Grade, LX, 0, 0, 1
Grade, DX, 0, 1, 0
Grade, STD, 1, 0, 0
Sun_Roof, Panorama, 1, 0, 0
Sun_Roof, Nomal, 0, 0, 0
Transmission, 6MT, 1, 0, 0
Transmission, 10AT, 0, 0, 1
Transmission, HEV, 0, 0, 0
Transmission, 6AT, 0, 1, 0
Transmission, 5MT, 0, 0, 0
Transmission, CVT, 0, 0, 0
Engine, V6, 1, 1, 1
Engine, V4, 0, 0, 0
Tire, 18_inch_Tire, 0, 0, 1
Tire, 15_inch_Tire, 0, 0, 0
Tire, 16_inch_Tire, 1, 0, 0
Tire, 17_inch_Tire, 0, 1, 0
Drive_Type, 2WD, 0, 1, 1
Drive_Type, 4WD, 1, 0, 0

** Check Cafe

  FE(1) = 82
  SV(1) = 1116
  IWR(1) = 1215
  FE(2) = 87
  SV(2) = 1808
  IWR(2) = 1150
  FE(3) = 85
  SV(3) = 1171
  IWR(3) = 1180

  Cafe Value = 85
  Total Sales = 4095
  Total Options = 0
  Perturbation = 0 (Changed_VP = 0, Added_VP = 0)
(4095,0,0)
```
  
#### Multi-objective CAFE Problems
The following command finds a Pareto optimal solution of a multi-objective CAFE Problem,
where the CAFE standard value is 8.5km/L.
The asprin's option `-n 0` will allow for enumerating optima as necessary.
```
$ asprin aspcafe_extended.lp benchmark/tableFE.lp benchmark/tableSV.lp benchmark/ovm.lp --config=trendy -c t=85 > ovm_pareto.log
$ python3 bin/decode.py ovm_pareto.log
Optimal: 1

ANSWER: 1
Type, Option, Model1, Model2, Model3
Drive_Type, 2WD, 1, 1, 0
Drive_Type, 4WD, 0, 0, 1
Transmission, 6MT, 0, 0, 0
Transmission, 5MT, 0, 0, 0
Transmission, 10AT, 0, 0, 1
Transmission, CVT, 0, 0, 0
Transmission, 6AT, 1, 0, 0
Transmission, HEV, 0, 1, 0
Sun_Roof, Nomal, 0, 0, 0
Sun_Roof, Panorama, 0, 0, 0
Tire, 16_inch_Tire, 1, 0, 0
Tire, 17_inch_Tire, 0, 1, 0
Tire, 18_inch_Tire, 0, 0, 1
Tire, 15_inch_Tire, 0, 0, 0
Engine, V6, 1, 1, 1
Engine, V4, 0, 0, 0
Grade, DX, 0, 1, 0
Grade, LX, 0, 0, 1
Grade, STD, 1, 0, 0

** Check Cafe

  FE(1) = 88
  SV(1) = 2007
  IWR(1) = 1130
  FE(2) = 88
  SV(2) = 2007
  IWR(2) = 1130
  FE(3) = 80
  SV(3) = 1511
  IWR(3) = 1255

  Cafe Value = 85
  Total Sales = 5525
  Total Options = 12
  Perturbation = 0 (Changed_VP = 0, Added_VP = 0)
```

#### Multi-objective CAFE Problems considering Minimal Perturbation
The following command finds a Pareto optimal solution of a multi-objective
CAFE Problem considering Minimal Perturbation, where
- `legacy_ovm.lp` is an initial solution of the original problem `ovm.lp`
   with the CAFE standard value is 8.5km/L,
- a new problem is an extension of `ovm.lp` with `additional_constraint.lp`,
  and the CAFE standard value is changed to 9.0km/L.
```
$ asprin aspcafe_mpp.lp benchmark/mpp/legacy_ovm.lp benchmark/mpp/additional_constraint.lp benchmark/ovm.lp benchmark/tableFE.lp benchmark/tableSV.lp --config=trendy -c t=90 > ovm_mpp.log
```
$ python3 bin/decode.py ovm_mpp.log
```
```
Optimal: 1

ANSWER: 1
Type, Option, Model1, Model2, Model3
Engine, V4, 1, 0, 0
Engine, V6, 0, 1, 1
Drive_Type, 2WD, 1, 1, 0
Drive_Type, 4WD, 0, 0, 1
Sun_Roof, Panorama, 0, 0, 1
Sun_Roof, Nomal, 0, 0, 0
Tire, 16_inch_Tire, 1, 0, 0
Tire, 18_inch_Tire, 0, 0, 1
Tire, 15_inch_Tire, 0, 0, 0
Tire, 17_inch_Tire, 0, 1, 0
Grade, LX, 0, 0, 1
Grade, DX, 0, 1, 0
Grade, STD, 1, 0, 0
Transmission, 6MT, 0, 0, 0
Transmission, 10AT, 0, 0, 1
Transmission, 5MT, 1, 0, 0
Transmission, HEV, 0, 1, 0
Transmission, CVT, 0, 0, 0
Transmission, 6AT, 0, 0, 0

** Check Cafe

  FE(1) = 102
  SV(1) = 745
  IWR(1) = 983
  FE(2) = 88
  SV(2) = 2007
  IWR(2) = 1130
  FE(3) = 75
  SV(3) = 324
  IWR(3) = 1325

  Cafe Value = 90
  Total Sales = 3076
  Total Options = 14
  Perturbation = 4 (Changed_VP = 2, Added_VP = 1)
(3076,14,4)
```


