program ex510
implicit none

real :: a
real :: b=4.0
real, parameter :: e=0.0001

a=SQRT(b)**2-b

if (abs(a-0.0) <= e ) then
	write(*,*)  "a equals to zero "
else 
	write(*,*) "a does not equal to zero "
end if
stop
end

