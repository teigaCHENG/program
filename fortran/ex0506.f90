program ex506
implicit none

integer scr
character grd

write(*,*) "score:"
read(*,*) scr

if (scr > 100) then
	grd='?'
else if (scr >= 90) then
	grd='a'
else if (scr >= 80) then
	grd='b'
else if (scr >= 70) then
	grd='c'
else if (scr >= 60) then
	grd='d'
else if (scr >= 0) then
	grd='e'
else
	grd='?'
end if

write(*,"(A8,A8)") "grade:",grd
stop
end
