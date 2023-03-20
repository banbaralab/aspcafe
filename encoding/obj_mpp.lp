% maximize the expected sales volume
#preference (max_sv, more(weight)) { SV,G :: sv(SV,G) }.

% minimize the number of equipment options
used_v(V) :- v(V,G).
#preference (min_op, less(weight)) { 1,V :: used_v(V) }.

% minimize the number of changes
changed_vp(VP,G) :- v(V,G), not legacy(v(V,G)), legacy(vp(VP,G)), v_def(V,VP,_).
added_vp(VP,G) :- vp(VP,G), not legacy(vp(VP,G)).
#preference (mp, less(weight)) { 1,VP,G :: changed_vp(VP,G) ; 2,VP,G :: added_vp(VP,G) }.

% Pareto optimization
#preference (all, pareto) { **max_sv; **min_op; **mp}.

% optimization statement
#optimize(all).



