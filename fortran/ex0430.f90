program ex430
implicit none
integer a
real b
complex c
character*20 str
data a,b,c,str /2,1.0,(1.0,2.0),'fortran'/
write(*,*) a,b,c,str
stop
end
