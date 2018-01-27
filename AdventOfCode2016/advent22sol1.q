ins:2_ins:read0`:advent22.q
nodes:{[test](22#test;(8#(22_test));8#(30_test);8#(36_test);6#(42_test))} each ins
size:{"I"$(x[1] except "T")} each nodes;used:{"I"$(x[2] except "T")} each nodes;;avail:{"I"$(x[3] except "T")} each nodes;percent:{"I"$(x[4] except "%")} each nodes
(count where used <= max avail)-1
