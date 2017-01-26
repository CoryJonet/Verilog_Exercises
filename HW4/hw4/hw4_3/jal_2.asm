//test jumping with a negative offset
lbi r1, 127
lbi r2, 34
jal 6
lbi r3, 1
lbi r4, 2
jal 4
jal -6 
lbi r3, 17
lbi r4, 19
halt
