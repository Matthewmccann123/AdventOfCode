ins:asc ins:{"J"$(" " vs x)} each ins:{ssr[x;"-";" "]} each ins:read0`:advent20.q
ins:{[ins;x] ins[x;1]: ?[ins[x][0] > ins[x][1]; ins[x;0];ins[x;1]]; ins[x+1;0]: ?[((ins[x][1]) > (ins[x+1][0])); ins[x;1]; ins[x+1;0]];ins}/[ins;til ((count ins)-1)]
sum {x-1} each ({ins[x+1][0]-ins[x][1]} each til count ins ) except 0
