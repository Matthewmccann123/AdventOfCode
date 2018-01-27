ids:{raze{n:"J"${"," vs x}'[(" " vs ltrim x except .Q.a)0 2];xc:n[0;0]+til 1+ abs(-). n[;0];yc:n[0;1] +til 1 +abs(-). n[;1];(sw:{y,'x}[xc]each yc)}[x]} each read0`:Inp6.q;
f_on:{lights[x[0];x[1]]+:1};
f_off:{$[lights[x[0];x[1]]>0;lights[x[0];x[1]]-:1;lights]};
f_toggle:{lights[x[0];x[1]]+:2};
lights:(1000 cut (1000*1000)#0);
{$[first (1#x)=`on;f_on each 1_x$[first (1#x)=`off;f_off each 1_x;f_toggle each 1_x]]} each (({$[x like "*on*";`on;x like"*off*";`off;`toggle]} each read0`:Inp6.q),'ids);
sum raze lights
