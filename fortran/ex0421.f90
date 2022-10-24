program ex421
integer a
real b
complex c
logical d
character(len=20) e
a=10
b=12.34
c=(1,2)
d=.true.
e="fortran"
write(*,"(1X,I5)") a   	
! nX indates shift right by n times to the output location 
! Iw indates bit width of the output integer
write(*,"(1X,F5.2)") b
write(*,"(1X,F4.1,F4.1)") c
write(*,"(1X,L3)") d
write(*,"(1X,A10)") e
end
