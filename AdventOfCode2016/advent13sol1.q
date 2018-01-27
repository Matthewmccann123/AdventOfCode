grid:50 cut 2500#"."
inp:1350
values:(til 50) cross (til 50)
testgrid: 50 cut {t:?[((count where (0b vs ((y[0]*y[0]) + (3*y[0]) + (2*y[0]*y[1]) + y[1] + (y[1]*y[1]) + x))) mod 2)=1;"#";"."]}[inp] each values
testgrid[1;1]:"O"
testgrid[31;39]:"X"


show "92 -> worked out manually from drawing grid and walking (could automate in future)"
