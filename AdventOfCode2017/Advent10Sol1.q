advent 10 part 1


x:til 256;
list:"J"$"," vs read0`:inp;

prd[2#{nums:x[0];takers:x[1];skip:x[2];idx:x[3];nl:@[nums;(idx + til takers[0])mod count nums;:;reverse nums (idx + til takers[0])mod count nums];(nl;1_takers;skip+1;idx+skip+takers[0])}/[count list;(x;list;skip;idx)][0]]