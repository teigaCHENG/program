program ex501
implicit none
real(kind=4) ::speed
write(*,*) "speed:"
read(*,*) speed
if (speed >100.0) then
	write(*,*) "slow down"
end if
stop
end
