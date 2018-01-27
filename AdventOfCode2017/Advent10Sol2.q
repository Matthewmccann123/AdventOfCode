list:({0b sv -64#x}'[0b vs/: "189,1,111,246,254,2,0,120,215,93,255,50,84,15,94,62"]),(17;31;73;47;23);
x:til 256;
raze string{"x"$0b sv(<>/)0b vs/:x}'[16 cut {idx:x[3];skip:x[2];list:x[1];x:x[0]; t:{nums:x[0];takers:x[1];skip:x[2];idx:x[3];nl:@[nums;(idx + til takers[0])mod count nums;:;reverse nums (idx + til takers[0])mod count nums];(nl;1_takers;skip+1;idx+skip+takers[0])}/[count list;(x;list;skip;idx)];(t[0];list; t[2];t[3])}/[64;(x;list;0;0)][0]]
