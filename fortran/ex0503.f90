program ex503
implicit none
integer rain, windspeed

write(*,*) "rain:"
read(*,*) rain
write(*,*) "windspeed:"
read(*,*) windspeed
if (rain >= 500 .or. windspeed >=10 ) then
	write(*,*) "stop going to school"
else 
	write(*,*) "go to work as usual"
end if
stop
end
