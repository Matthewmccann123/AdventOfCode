ins:asc ins:{"J"$(" " vs x)} each ins:{ssr[x;"-";" "]} each ins:read0`:advent20.q
((first ins[where {((ins[x][1]) + 1) < ins[x+1][0]} each til count ins])[1])+1
