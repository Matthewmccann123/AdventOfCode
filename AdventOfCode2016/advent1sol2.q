\l advent1sol.q
x:0
y:0
sval:(string value dirdist)
skey:string key dirdist
realdirs:{skey[x],sval[x]} each til count sval
yvals:sums raze y+:{[x;coord] ?[max (coord="N");({"I"$-1_x}coord)#1;?[max (coord="S");({"I"$-1_x}coord)#-1;({"I"$-1_x}coord)#0]]}[y] each realdirs
xvals:sums raze x+:{[x;coord] ?[max (coord="E");({"I"$-1_x}coord)#1;?[max (coord="W");({"I"$-1_x}coord)#-1;({"I"$-1_x}coord)#0]]}[x] each realdirs
unique:{string[x[z]]," ",string[y[z]]}[xvals;yvals;] each til count yvals
abs sum {"I"$x} each coords:" " vs unique[first where ({[num] sum {x~y}[unique[num]] each unique} each til count unique)>1]
