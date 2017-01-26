//test JAL with a negative offset
lbi r1, 2
lbi r2, 34
jalr r1, 10
lbi r3, 1
lbi r4, 2
jalr r1, 12
jalr r2, -28  
lbi r3, 17
lbi r4, 19
halt
