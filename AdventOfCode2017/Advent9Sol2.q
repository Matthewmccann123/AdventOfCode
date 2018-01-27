inp:raze read0`:inp9.q.txt;
rmexclam:{[test] {if[(count x)=x?"!";:x];x[c:x?"!"]:" "; x[c+1]:" ";x}/[10000;test]};
test2:rmexclam[inp];
{test:x[0];idx:x[1];cnt:x[2];tot:x[3];bol:x[4]; if[bol and test[idx]=">";tot+:cnt;cnt:0;bol:0b]; if[bol;cnt+:1]; if[test[idx]="<";bol:1b]; (test;idx+1;cnt;tot;bol)}/[count test2;(test2;0;0;0;0b)][3] - count where rmexclam[inp]=" "