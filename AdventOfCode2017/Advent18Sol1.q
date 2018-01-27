setter:{x:" " vs x;@[`.;`$x[1];:;value x[2]]};
add:{x:" " vs x;@[`.;`$x[1];+;value x[2]]};
mult:{x:" " vs x;@[`.;`$x[1];*;value x[2]]};
modder:{x:" " vs x;@[`.;`$x[1];mod;value x[2]]};
sond:{x:" " vs x;@[`.;`snd;:;value x[1]]};
rcv:{x:" " vs x;if[0<>value x[1];@[`.;`$x[1];:;snd]]};
jgz:{x:" " vs x;if[0<value x[1];:value x[2]];:0};
@[`.;;:;0]'[`$'.Q.a];
input:read0`:input18.q.txt;
{ins:x[0];idx:x[1];vl:ins[idx];if[all "set"=3#vl;setter[vl]];if[all "add"=3#vl;add[vl]];if[all "rcv"=3#vl;if[0<l:value(" " vs vl)[1];rcv[vl];:(ins;4000)]];if[all "mul"=3#vl;mult[vl]]; if[all "set"=3#vl;setter[vl]]; if[all "snd"=3#vl;sond[vl]]; if[all "mod"=3#vl;modder[vl]]; if[all "jgz"=3#vl;idx:idx+jgz[vl]];(ins;$[idx~x[1];idx+1;idx])}/[{x[1]<count x[0]};(input;0)];
show snd





