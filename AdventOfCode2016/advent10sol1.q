ins:read0`:advent10.q
initial:ins[where ins like "*value*"]
abet:"abcdefghijklmnopqrstuvwxyz"
output:2_output:2, 0
moving:ins[where ins like "* low *"];bots:{2_x} each bots: {0,0} each til count ins;{bots["I"$(-3#x) except "abcdefghijklmnopqrstuvwxyz"],:"I"$((-3#9#x)except "abcdefghijklmnopqrstvuwxyz")} each initial
tester:{{ok:?[(count bots["I"$-3#(7#x) except abet])>1;1b;0b];if[ok and not x like "*output*";bots["I"$(-10#(29#x)) except abet],:min bots["I"$-3#(7#x) except abet];bots["I"$(-3#x except abet)],:max bots["I"$-3#(7#x) except abet];show (min bots["I"$-3#(7#x) except abet]);show (max bots["I"$-3#(7#x) except abet]);show moving[moving?x]; moving[moving?x]:""; show "#############";bots["I"$-3#(7#x) except abet]:2_bots["I"$-3#(7#x) except abet]] ;if[ok and x like "*output*";output,:min bots["I"$-3#(7#x) except abet];bots["I"$(-3#x except abet)],:max bots["I"$-3#(7#x) except abet];show min bots["I"$-3#(7#x) except abet];show max bots["I"$-3#(7#x) except abet];show moving[moving?x]; moving[moving?x]:""; show "###"; bots["I"$-3#(7#x) except abet]:2_bots["I"$-3#(7#x) except abet]]} each moving}

show "### TYPE tester[] TO ITERATE THROUGH REMOVING FROM ROBOTS, SEARCH FOR (MIN-MAX->ROBOT) ###"
