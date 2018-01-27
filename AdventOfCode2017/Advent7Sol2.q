x:flip" " vs/:(trim each "->" vs/:trim(raze'[read0`:inp7.q]))[;0];
x[1]:"J"$x[1] except\: "()";
dict2:(!). x

test:sum each {dict2'[" " vs x]}each l[where 1< count each l:c[5;464]




t:{dict2'[" " vs raze x]} c[4;464];
g:{l[where 1<l:dict2'[" " vs raze x]]} c[5;464];

//235 too low

max raze {1_deltas sum x}'[flip (t;g)]
{raze x}'[flip (t;g)]


sum each "J"$" " vs/:"0" vs raze (string {sum raze x}'[flip (t;g)]),\:" "]
