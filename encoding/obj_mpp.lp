% Maximize sum of SV.
#preference (max_sv, more(weight)) { SV,G :: sv(SV,G) }.

% Minimize the number of V's.
used_v(V) :- v(V,G).
#preference (min_op, less(weight)) { 1,V :: used_v(V) }.

% Minimize change of V.
changed_vp(VP,G) :- v(V,G), not legacy(v(V,G)), legacy(vp(VP,G)), v_def(V,VP,_).
added_vp(VP,G) :- vp(VP,G), not legacy(vp(VP,G)).
%% removed_vp(VP,G) :- not vp(VP,G), legacy(vp(VP,G)).

#preference (mp, less(weight)) { 1,VP,G :: changed_vp(VP,G) ; 2,VP,G :: added_vp(VP,G) }.

% pareto of max_sv and min_op
#preference (all, pareto) { **max_sv; **min_op; **mp}.
#optimize(all).




