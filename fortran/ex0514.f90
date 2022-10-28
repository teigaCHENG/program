program ex514
implicit none
real hei
real wei

write(*,*) "height:"
read(*,*) hei
write(*,*) "weight:"
read(*,*) wei

if (wei > hei -200) goto 200
100 write(*,*) "under control"
	goto 300
200 write(*,*) "too fat"
300 stop
end
