#const p_op = 1.

% 共通オプション数を最大化
used_v(V) :- v(V,G).
#minimize {1@p_op,V : used_v(V) }.


