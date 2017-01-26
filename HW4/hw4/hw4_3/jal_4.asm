//check if the correct value is stored in R7 on a jump. 
//R7 should store 14 
lbi r1, 127
lbi r2, 34
jal 6
addi r7, r7, 0
lbi r4, 2
jal 2	
jal -8 
lbi r3, 17
lbi r4, 19
halt
