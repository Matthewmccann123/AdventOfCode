inp:read0`:inp9.q.txt;
rmexclam:{[test] {if[(count x)=x?"!";:x];x[c:x?"!"]:" "; x[c+1]:" ";x}/[10000;test]};
rmgarbage:{[test2]{test2:x[0]; i:x[1]; bol:x[2]; if[(test2[first i]="<") and bol=0b;:(test2;1_i;1b)];if[test2[first i]=">";:(test2;1_i;0b)]; if[bol;test2[first i]:" "];(test2;1_i;bol)}/[count test2;(test2;til count test2;0b)][0]};
test:rmgarbage[rmexclam[raze inp]];
{test:x[0];idx:x[1];cnt:x[2];tot:x[3]; if[test[idx]="{";cnt+:1]; if[test[idx]="}";tot+:cnt;cnt-:1];(test;idx+1;cnt;tot)}/[count test;(test;0;0;0)][3]