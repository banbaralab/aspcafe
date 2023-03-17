% 
% ASP encoding of car option design problem
% add upper and lower bound of IWR to basic.lp
% @author: Raito Takeuchi
%

% CAFE value
#const t = 90. 

% vp(VP,G): G selects VP. 
{ vp(VP,G) } :- vp_def(VP), group(G).

% Variability constraints
% v(V,G): G selects V.
1 { v(V,G) : v_def(V,VP,_) } 1 :- vp(VP,G).

% calculate the upper and lower limits of the sum of IWR values (pre-processing)
ub_vp(UB,VP) :- UB = #max { IWR,V : v_def(V,VP,IWR) }, vp_def(VP).
ub_iwr(S) :- S = #sum { UB,VP : ub_vp(UB,VP) }.
lb_vp(LB,VP) :- LB = #min { IWR,V : v_def(V,VP,IWR) }, vp_def(VP).
lb_iwr(S) :- S = #sum { LB,VP : lb_vp(LB,VP), require_vp(VP) }.

% Fuel economy constraints
iwr(S,G) :- S = #sum { IWR,V : v(V,G), v_def(V,_,IWR) },
	    LB <= S, S <= UB, lb_iwr(LB), ub_iwr(UB),  group(G).
fe(FE,G) :- iwr(S,G), fe_map(S,FE).
sv(SV,G) :- iwr(S,G), S1 = ((S+2)/5)*5, sv_map(S1,SV).

:- not 0 <= #sum { (FE-t)*SV,FE,SV,G : fe(FE,G), sv(SV,G) }.

% Dependency constraints
% require_vp(VP): VP must be selected. 
:- not vp(VP,G), require_vp(VP), group(G).

% require_v_v(V,W): If V is selected, then W must also be selected.
:- require_v_v(V,W), v(V,G), not v(W,G).

% require_vp_v(VP,V): If VP is selected, then V must also be selected.
:- require_vp_v(VP,V), vp(VP,G), not v(V,G).
:- require_v_vp(V,VP), v(V,G), not vp(VP,G).

% exclude_v_v(V,W): V and W must be selcted at the same time.
:- exclude_v_v(V,W), v(V,G), v(W,G).

% exclude_vp_v(VP,V):VP and V must be selected at the same time.
:- exclude_vp_v(VP,V), vp(VP,G), v(V,G).

%END
