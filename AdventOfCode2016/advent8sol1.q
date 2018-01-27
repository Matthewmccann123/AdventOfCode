ins:read0`:advent8.q;grid:50 cut 300#"."
fgrid:{if[y like "*rect*";t:("x" vs 5_y);x[til "I"$t[1]; til "I"$t[0]]:"#"]; if[y like "*rotate*"; if[y like "*row*"; amount:"I"$-2#y; row:"I"$(-4#(-2_y) except "abcdefghijlmnopqrtstuvwxyz="); x[row;]:(neg amount) rotate x[row;]]]; if[y like "*rotate*"; if[y like "*col*"; amount:"I"$-2#y;col:"I"$(-4#(-2_y) except "abcdefghijlmnopqrtstuvwxyz="); x[;col]:(neg amount) rotate x[;col]]];x}/[grid;ins]
sum ((raze fgrid)="#")
