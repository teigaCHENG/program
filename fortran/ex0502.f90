program ex502
implicit none
real(kind=4) :: height
real(kind=4) :: weight
write(*,*) "height:"
read(*,*) height
write(*,*) "weight:"
read(*,*) weight
if (weight > height-100 ) then
	write(*,*) "too fat"
else 
	write(*,*) "under control"
end if
stop
end
