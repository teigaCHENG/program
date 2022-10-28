program ex509
implicit none
real :: a
real :: b=3.0

a=SQRT(b)**2-b

if (a==0.0) then
	write(*,*) "a equals to zero"
else 
	write(*,*) "a does not equal to zero"
end if
stop
end
