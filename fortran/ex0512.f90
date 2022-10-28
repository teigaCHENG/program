program ex512
implicit none

integer scr
character grd

write(*,*) "scr:"
read(*,"(I3)") scr

select case(scr)
case(90:100)
	grd = 'a'
case(80:89)
        grd = 'b'
case(70:79)
        grd = 'c'
case(60:69)
        grd = 'd'
case(0:59)
        grd = 'e'
case default
	grd = '?'
end select

write(*,"('your grade is', A2)") grd
stop
end
