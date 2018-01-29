inp:read0`:AdventOfCode2015/inp7.q;
{inp[t]:ssr[;x[0];x[1]]'[inp t:where inp like "*",x[0],"*"]}'[(("aj";"zz");("ej";"yy");("ij";"xx");("in";"uu");("lj";"rr"))];  //predfined kdb variables causing issues, modifying input.
ASSIGN:{[input]@[`.;`$t[1];:;value (t:"->"vs input)[0]];0b};
AND:{[input] @[`.;`$t[1];:;0b sv (and). 0b vs/:value'["AND" vs (t:"->" vs input)[0]]];0b};
OR:{[input] @[`.;`$t[1];:;0b sv (or). 0b vs/:value'["OR" vs (t:"->" vs input)[0]]];0b};
RSHIFT:{[input] n:n:"J"$(" " vs input)[2]; @[`.;`$t[1];:;0b sv (48#0b),(n#0b),(n _ (neg n) rotate -16#0b vs value 2#(t:"->"vs input)[0])];0b};
LSHIFT:{[input] n:n:"J"$(" " vs input)[2]; @[`.;`$t[1];:;0b sv (48#0b),((neg n) _ n rotate -16#0b vs value 2#(t:"->"vs input)[0]),(n#0b)];0b};
NOT:{[input] @[`.;`$c[1];:;0b sv (48#0b),not -16#0b vs value (c:"->"vs (4_input))[0]];0b};
dict:0 1 2 3 4!(AND;OR;LSHIFT;RSHIFT;NOT);
{[inp] inp:inp except inp where not  {c:where x like/:("*AND*";"*OR*";"*LSHIFT*";"*RSHIFT*";"*NOT*");$[c~`long$();@[ASSIGN;x;1b];@[(dict raze c)[0];x;1b]] } each inp;inp}/[{0<count x};inp]
show a;



inp[89]:raze (string a)," -> b";
![`.;();0b;]'[enlist each system["v"]except `inp`dict];  //remove other vars from namespace.
{[inp] inp:inp except inp where not  {c:where x like/:("*AND*";"*OR*";"*LSHIFT*";"*RSHIFT*";"*NOT*");$[c~`long$();@[ASSIGN;x;1b];@[(dict raze c)[0];x;1b]] } each inp;inp}/[{0<count x};inp];
show a;


