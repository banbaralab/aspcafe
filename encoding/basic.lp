% 
% ASP encoding of car option design problem
% @author: Raito Takeuchi
%

% 企業平均燃費規制の値
#const t = 90. 

% vp(VP,G): グループGはVPを選択する．
{ vp(VP,G) } :- vp_def(VP), group(G).

% 個数制約
% v(V,G): グループGはVを選択する．
1 { v(V,G) : v_def(V,VP,_) } 1 :- vp(VP,G).
   
% 企業平均燃費制約
iwr(S,G) :- S = #sum { IWR,V : v(V,G), v_def(V,_,IWR) }, group(G).
fe(FE,G) :- iwr(S,G), fe_map(S,FE).
%sv(SV,G) :- iwr(S,G), sv_map(S,SV).
sv(SV,G) :- iwr(S,G), S1 = ((S+2)/5)*5, sv_map(S1,SV).

:- not 0 <= #sum { (FE-t)*SV,FE,SV,G : fe(FE,G), sv(SV,G) }.

% 要求仕様制約
% require_vp(VP): VPは必須VP
:- not vp(VP,G), require_vp(VP), group(G).

% require_v_v(V,W): Vが選択されるならば，Wも選択されなければならない．
:- require_v_v(V,W), v(V,G), not v(W,G).

% require_vp_v(VP,V): VPが選択されるならば，Vも選択されなければならない．
:- require_vp_v(VP,V), vp(VP,G), not v(V,G).
:- require_v_vp(V,VP), v(V,G), not vp(VP,G).

% END
