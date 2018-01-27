dict:(!). trim flip x[where 1<count'[x:"->" vs/: x:trim (c:raze'[read0`:inp7.q]) except\: .Q.n,"(),"]];
st:trim x[;0] except\: .Q.n,"()";
c:{[st] c[where 0<count each c:dict each " " vs/:raze'[st]]}\[5;st];
st[l?max l:count'[group raze {where 0<count each raze each x}'[c]]]
