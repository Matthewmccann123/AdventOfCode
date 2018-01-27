c:raze{x[0]#x[1]}'[flip(1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9;"RULDRULDRULDRULDR")];
dict:("RULD"!((0;1);(-1;0);(0;-1);(1;0)));
instructions:dict c;
l:{(1_x[0];x[1] + first x[0])}\[count instructions;(instructions;(4;4))][;1];
d[where not all'[(0;0)=/:d:((-1;0;1) cross (-1;0;1))]];
sq:9 cut 81#0;sq[4;4]:1;
last ({sq:x[0];mysq:(.[x;0,x 1;:;(sum{x[y[0];y[1]]}[sq;]each x[1]+/:d[where not all'[(0;0)=/:d:((-1;0;1) cross (-1;0;1))]])])[0];(mysq;x[1]+first x[2];1_x[2])}\[(count instructions)-1;(sq;(4;5);1_instructions)])[;0]
