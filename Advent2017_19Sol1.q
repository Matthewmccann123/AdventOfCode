st:(0;(first where "|" = first inp));
rmdict:("UDLR"!"DURL");
dict:"UDLR"!(-1 0;1 0;0 -1;0 1);
q)distinct {pos:x[0];pins:x[1];lets:x[2];npos:.[inp;pos+dict pins];if[npos in "-|";x[0]:pos+dict pins];if[npos in .Q.A;x[0]:pos+dict pins;lets,:npos];if[npos="+";x[1]:first c where not" "=.[inp;]'[(pos+dic
t[pins])+/:dict(c:"UDLR" except rmdict[pins])]]; (pos+dict pins;x[1];lets)}/[100000;((0;103);"D";"")][2]