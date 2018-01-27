ins:read0`:advent10.q
abet:"abcdefghijklmnopqrstuvwxyz"
initial:ins[where ins like "*value*"]
output:{2_x} each bots: {0,0} each til count ins
moving:ins[where ins like "* low *"];bots:{2_x} each bots: {0,0} each til count ins;{bots["I"$(-3#x) except "abcdefghijklmnopqrstuvwxyz"],:"I"$((-3#9#x)except "abcdefghijklmnopqrstvuwxyz")} each initial
tester:{{ok:?[(count bots["I"$-3#(7#x) except abet])>1;1b;0b];if[ok and not x like "*output*";bots["I"$(-10#(29#x)) except abet],:min bots["I"$-3#(7#x) except abet];bots["I"$(-3#x except abet)],:max bots["I"$-3#(7#x) except abet];moving[moving?x]:""; bots["I"$-3#(7#x) except abet]:2_bots["I"$-3#(7#x) except abet]] ;if[ok and x like "*output*";output["I"$(15#(-25#x)) except abet],:min bots["I"$-3#(7#x) except abet];bots["I"$(-3#x except abet)],:max bots["I"$-3#(7#x) except abet];moving[moving?x]:""; bots["I"$-3#(7#x) except abet]:2_bots["I"$-3#(7#x) except abet]]} each moving}
do[50;tester[]]
((output[0]*output[1])*output[2])
