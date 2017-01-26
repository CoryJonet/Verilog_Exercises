//test subtracting a negative number from a positive number with 16 bit overflow
lbi r2, 1
slli r2, r2, 15
subi r1, r2, 4
halt


