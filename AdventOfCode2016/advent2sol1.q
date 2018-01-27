ins:read0`:advent2.q
raze string {[k] last {[num;idx] num:?[idx="U";?[num>3;num-3;num];num]; num:?[idx="D";?[num<7;num+3;num];num];  num:?[idx="R";?[not num in (3;6;9);num+1;num];num]; num:?[idx="L";?[not num in (1;4;7);num+-1;num];num]}\[2;ins[k]]} each til count ins

