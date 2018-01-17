nums:(c:flip ("SSJSJSJSJSJ";" ")0:(read0`:inp15.q)except\: ",:")[;2 4 6 8 10];
t:{t[where not 0 in/:t:x cross til 50]}/[3;til 50];
show max prd'[-1_/:g[[where all'[0<g:sum each {((x[0]*nums[0]);(x[1]*nums[1]);(x[2]*nums[2]);(x[3]*nums[3]))} each inp:(t[where 100=sum each t])]]]]
show max prd'[-1 _/:g[where 500=raze -1 #/:g:g[[where all'[0<g:sum each {((x[0]*nums[0]);(x[1]*nums[1]);(x[2]*nums[2]);(x[3]*nums[3]))} each inp:(t[where 100=sum each t])]]]]]