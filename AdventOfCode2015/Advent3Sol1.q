inp:read0`:inp3.q;
v:{x+:$[y=">";1;0]; x+:$[y="<";-1;0]; :x}\[0;raze inp];
t:{x+:$[y="^";1;0]; x+:$[y="v";-1;0]; :x}\[0;raze inp];
(count distinct flip (t;v))+1
