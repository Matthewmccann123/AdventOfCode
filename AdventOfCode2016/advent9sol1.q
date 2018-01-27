show "IGNORE ERROR - NEEDS ERROR TRAP!!!!!!!!!!"
show "TYPE ****TOTAL**** FOR YOUR TOTAL VALUE"

ins: first ins:read0`:advent9.q
{[ins] val:((first where ins=")")+1)#ins; numbers:("x" vs (")" vs ssr[ins;"(";""])[0]);ins:((count (raze numbers)) + 3)_ins;totval:(prd"I"$numbers)#("I"$first numbers)#(ins);(ins:("I"$first numbers)_ins);totval,:$[(count ins)>0;(first where ins="(")#ins;0#ins];total+:count totval;ins}/[{(count ins)>0};ins]
