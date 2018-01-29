inp:read0`:AdventOfCode2015/inp7.q;
inp[t]:ssr[;"aj";"zz"]'[inp t:where inp like "*aj*"];  //workaround for keywords in kdb .. 
inp[t]:ssr[;"ej";"yy"]'[inp t:where inp like "*ej*"];
inp[t]:ssr[;"ij";"xx"]'[inp t:where inp like "*ij*"];
inp[t]:ssr[;"in";"uu"]'[inp t:where inp like "*in*"];
inp[t]:ssr[;"lj";"rr"]'[inp t:where inp like "*lj*"];
ASSIGN:{[input]@[`.;`$t[1];:;value (t:"->"vs input)[0]];0b};
AND:{[input] @[`.;`$t[1];:;0b sv (and). 0b vs/:value'["AND" vs (t:"->" vs input)[0]]];0b};
OR:{[input] @[`.;`$t[1];:;0b sv (or). 0b vs/:value'["OR" vs (t:"->" vs input)[0]]];0b};
RSHIFT:{[input] n:n:"J"$(" " vs input)[2]; @[`.;`$t[1];:;0b sv (48#0b),(n#0b),(n _ (neg n) rotate -16#0b vs value 2#(t:"->"vs input)[0])];0b};
LSHIFT:{[input] n:n:"J"$(" " vs input)[2]; @[`.;`$t[1];:;0b sv (48#0b),((neg n) _ n rotate -16#0b vs value 2#(t:"->"vs input)[0]),(n#0b)];0b};
NOT:{[input] @[`.;`$c[1];:;0b sv (48#0b),not -16#0b vs value (c:"->"vs (4_input))[0]];0b};
dict:0 1 2 3 4!(AND;OR;LSHIFT;RSHIFT;NOT);
{[inp] inp:inp except inp where not  {c:where x like/:("*AND*";"*OR*";"*LSHIFT*";"*RSHIFT*";"*NOT*");$[c~`long$();@[ASSIGN;x;1b];@[(dict raze c)[0];x;1b]] } each inp;inp}/[{0<count x};inp]
show a;

![`.;();0b;]'[enlist each system["v"]except `inp`dict];
b:956;
inp[89]:"956 -> b";
{[inp] inp:inp except inp where not  {c:where x like/:("*AND*";"*OR*";"*LSHIFT*";"*RSHIFT*";"*NOT*");$[c~`long$();@[ASSIGN;x;1b];@[(dict raze c)[0];x;1b]] } each inp;inp}/[{0<count x};inp];
show a;


