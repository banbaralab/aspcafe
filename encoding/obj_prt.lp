% maximize the expected sales volume
#preference (max_sv, more(weight)) { SV,G :: sv(SV,G) }.

% minimize the number of equipment options
used_v(V) :- v(V,G).
#preference (min_op, less(weight)) { 1,V :: used_v(V) }.
 
% Pareto optimization
#preference (all, pareto) { **max_sv; **min_op}.

% optimization statement
#optimize(all).



