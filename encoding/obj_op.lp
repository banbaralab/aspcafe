#const p_op = 1.

% minimize the number of equipment options
used_v(V) :- v(V,G).
#minimize {1@p_op,V : used_v(V) }.


