program ex507
implicit none
integer scr
character grd

write(*,*) "score:"
read(*,*) scr

if (scr>=90 .and. scr <100) then 
	grd='a'
end if
if (scr>=80 .and. scr <90) then 
	grd='b'
end if
if (scr>=70 .and. scr <80) then 
	grd='c'
end if
if (scr>=60 .and. scr <70) then
	grd='d'
end if
if (scr>=0 .and. scr <60) then 
	grd='e'
end if
if (scr > 100 .or. scr < 0) then 
	grd='?'
end if
write(*,"(A8,A8)") "grade:", grd
stop
end 
