inp:(read0`:AdventOfCode2015/inp23.q)except\:","
a:0; b:0;
t:{{ins:x[1] i:x[0]; c:(" " vs ins)[0 1 2];if[ins like "*jio*"; if[1=value c[1];:(i+"J"$ -2#ins;inp)];:(i+1;inp)];if[ins like "*jmp*";:(i+"J"$c[1];inp)];if[ins like "*jie*"; if[0=mod[value c[1]]2;:(i+"J"$c[2];inp)];:(i+1;inp)];if[ins like "*hlf*"; @[`.;`$c[1];:;ceiling (value c[1])% 2];:(i+1;inp)];if[ins like "*tpl*"; @[`.;`$c[1];:;3*value c[1]];:(i+1;inp)];if[ins like "*inc*"; @[`.;`$c[1];:;1+value c[1]];:(i+1;inp)] }/[{x[0]<=-1 + count inp};(0;inp)]}
t[];show b;
b:0; t[]; show b;













