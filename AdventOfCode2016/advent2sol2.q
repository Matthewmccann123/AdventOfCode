show "##### Numbers in Hex - 10 = A, 11 = B etc.. ####"
ins:read0`:advent2.q
u2nums:3 13
u4nums:6 7 8 10 11 12
d2nums:1 11
d4nums:2 3 4 6 7 8
r1nums:2 3 5 6 7 8 10 11
l1nums:3 4 6 7 8 9 11 12
{[k] last {[num;x] num:?[x="U";?[num in u4nums;num-4;?[num in u2nums;num-2;num]];?[x="D";?[num in d4nums;num+4;?[num in d2nums;num+2;num]];?[x="L";?[num in l1nums;num-1;num];?[x="R";?[num in r1nums;num+1;num];num]]]]}\[5;ins[k]]} each til count ins
