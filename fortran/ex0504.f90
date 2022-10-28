program ex504
implicit none
integer rain, windspeed
logical r,w

write(*,*) "rain:"
read(*,*) rain
write(*,*) "windspeed:"
read(*,*) windspeed

r = (rain >= 500)
w = (windspeed >= 10)

if (r .or. w) then
	write(*,*) "stop"
else 
	write(*,*) "go"
end if 

stop
end
