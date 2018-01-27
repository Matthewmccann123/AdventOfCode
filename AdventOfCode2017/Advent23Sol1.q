@[`.;;:;0]'[`$'.Q.a];
input:read0`:input23.q;
setter:{x:" " vs x;@[`.;`$x[1];:;value x[2]]};
sub:{x:" " vs x;@[`.;`$x[1];-;value x[2]]};
mult:{x:" " vs x;@[`.;`$x[1];*;value x[2]];@[`.;`z;+;1]};
jnz:{x:" " vs x;if[0<>value x[1];:value x[2]];:0};
{ins:x[0];idx:x[1];vl:ins[idx];if[all "set"=3#vl;setter[vl]];if[all "sub"=3#vl;sub[vl]];if[all "mul"=3#vl;mult[vl]]; if[all "jnz"=3#vl;idx:idx+jnz[vl]];(ins;$[idx~x[1];idx+1;idx])}/[{x[1]<count x[0]};(input;0)];
show z;
