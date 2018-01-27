{l:"->" vs x;@[`.;`$l 1;:;"J"$l 0]}'[inp[where -1<"I"$({"->" vs x}'[inp:read0`:inp7.q])[;0]]]
dict:(til 5)!({[inp]inp:"->" vs inp;l:(and/)[0b vs/: value each "AND" vs inp[0]];@[`.;`$inp[1];:;0b sv l]};{[inp]inp:"->" vs 4_inp;@[`.;`$inp[1];:;0b sv (48#0b),-16#(not 0b vs value inp[0])]};{[inp] if[(`$2#inp) in system"v";l:"->" vs inp;p:"LSHIFT" vs l[0];c:0b vs value p[0];x:"I"$p[1];i:c[(x) + til count c];@[`.;`$l[1];:;0b sv i]]};{[inp] if[(`$2#inp) in system"v";l:"->" vs inp;p:"RSHIFT" vs l[0];c:0b vs value p[0];x:"I"$p[1];i:c[(neg x) + til count c];@[`.;`$l[1];:;0b sv i]]};{[inp]inp:"->" vs inp;l:(or/)[0b vs/: value each "OR" vs inp[0]];@[`.;`$inp[1];:;0b sv l]})
f:{[inp]inp:"->" vs inp;l:(and/)[0b vs/: value each "AND" vs inp[0]];@[`.;`$inp[1];:;0b sv l]}

