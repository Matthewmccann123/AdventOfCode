inp:2900000;
1+first where ({sum distinct `long$t,x%t:(1+where 0=x mod 1+ til floor sqrt[x])except 0} each 1+ til 3000000)>=inp;