%%%
%%% The hard constraints of CAFE problem
%%% (basic version)
%%% 
%%% @author Raito Takeuchi (takeuchi.raito@nagoya-u.jp)
%%% @author Mutsunori Banbara (banbara@nagoya-u.jp)
%%%

% CAFE standard value
#const t = 90. % 9.0 km/L

{ vp(VP,G) } :- vp_def(VP), group(G).
:- not vp(VP,G), require_vp(VP), group(G).

% variability constraints
1 { v(V,G) : v_def(V,VP,_) } 1 :- vp(VP,G).
   
% fuel economy constraints
iwr(S,G) :- S = #sum { IWR,V : v(V,G), v_def(V,_,IWR) }, group(G).
fe(FE,G) :- iwr(S,G), fe_map(S,FE).
sv(SV,G) :- iwr(S,G), sv_map(S,SV).
:- not 0 #sum { (FE-t)*SV,FE,SV,G : fe(FE,G), sv(SV,G) }.

% dependency constraints (requirement)
:- require_v_v(V1,V2), v(V1,G), not v(V2,G).
:- require_v_vp(V,VP), v(V,G), not vp(VP,G).
:- require_vp_v(VP,V), vp(VP,G), not v(V,G).
:- require_vp_vp(VP1,VP2), vp(VP1,G), not vp(VP2,G).

% dependency constraints (exclusion)
:- exclude_v_v(V1,V2), v(V1,G), v(V2,G).
:- exclude_v_vp(V,VP), v(V,G), vp(VP,G).
:- exclude_vp_v(VP,V), vp(VP,G), v(V,G).
:- exclude_vp_vp(VP1,VP2), vp(VP1,G), vp(VP2,G).

% END
