program ex508

implicit none
real x,y
integer ans
write(*,*) "input x,y"
read(*,*) x,y

if (x>0) then 
	if (y>0) then
		ans =1
	else if (y<0) then
		ans =4
	else 
		ans=0
	end if
else if (x<0) then
	if (y>0) then
		ans =2
	else if (y<0) then
		ans =3
	else
	ans =0
	end if
end if
if (ans /=0 ) then
write(*,*) ans
else
write(*,*) 'on the axis'
end if
stop
end
