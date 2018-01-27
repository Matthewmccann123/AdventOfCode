mkey:"yzbqklnj";
mylist:{mkey,string x} each til 10000000;
first where {all(6#raze string (md5 x))="000000"} each mylist

