% Maximize sum of SV.
#preference (max_sv, more(weight)) { SV,G :: sv(SV,G) }.

% Minimize the number of V's.
used_v(V) :- v(V,G).
#preference (min_op, less(weight)) { 1,V :: used_v(V) }.
 
% pareto of max_sv and min_op
#preference (all, pareto) { **max_sv; **min_op}.
#optimize(all).



