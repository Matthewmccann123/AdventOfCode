mkey:"yzbqklnj";
mylist:{mkey,string x} each til 1000000;
first where {all(5#raze string (md5 x))="00000"} each mylist

