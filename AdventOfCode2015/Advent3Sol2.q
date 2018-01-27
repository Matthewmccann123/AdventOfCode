inp:read0`:inp3.q;
santa:(raze inp)[where not( til (count raze inp)) mod 2];
robosanta:(raze inp)[where ( til (count raze inp)) mod 2];
v:{x+:$[y=">";1;0]; x+:$[y="<";-1;0]; :x}\[0;robosanta];
t:{x+:$[y="^";1;0]; x+:$[y="v";-1;0]; :x}\[0;robosanta];
v1:{x+:$[y=">";1;0]; x+:$[y="<";-1;0]; :x}\[0;santa];
t1:{x+:$[y="^";1;0]; x+:$[y="v";-1;0]; :x}\[0;santa];
count distinct flip (t,t1;v,v1)
