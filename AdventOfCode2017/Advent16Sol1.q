day 16 function works on test inp
testinp:"," vs raze read0`:inp16.q.txt
{ins:first x[0]; test:x[1];if[ins[0]="s";test:(neg "J"$1_ins) rotate test]; if[ins[0]="x";ids:"J"$"/" vs 1_ins; tmp:test[ids 0]; test[ids 0]:test[ids 1];test[ids 1]:tmp]; if[ins[0]="p";ids:test?/:"/"vs 1_ins;tmp:test[ids 0]; test[ids 0]:test[ids 1];test[ids 1]:tmp];(1_x[0];test)}\[3;(testinp;test:.Q.a til 16)]