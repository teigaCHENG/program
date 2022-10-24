program ex421
integer a
real b
complex c
logical d
character*20 e
a=10
b=12.34
c=(1,2)
d=.true.
e="fortran"
write(*,100) a
write(*,200) b
write(*,300) c
write(*,400) d
write(*,500) e
100 format(1X,I5)
200 format(1X,F5.2)
300 format(1X,F4.1,F4.1)
400 format(1X,L3)
500 format(1X,A10)
end

