locdict:("NESW"!((-1;0);(0;1);(1;0);(0;-1)));
rdict:("NESW"!"ESWN");
ldict:("NEWS"!"WNSE");
inp:read0`:inp22.q;
map:1000 cut 1000000#".";
{map[500+x;500+til 25]:inp[x]} each til 25;
{map:x[0];pos:x[1];dir:x[2];cnt:x[3];   if[.[map;pos]=".";map:.[map;pos;:;"#"];cnt+:1;pos+:locdict dir:ldict dir]; if[.[x[0];x[1]]="#";map:.[map;pos;:;"."];pos+:locdict dir:rdict dir]; (map;pos;dir;cnt) }/[10000;(map;(512;512);dir;0)][3]