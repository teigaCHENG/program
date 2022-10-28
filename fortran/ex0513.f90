program ex513
implicit none
real a,b,ans
character opr

read(*,*) a
read(*,"(A1)") opr
read(*,*) b

select case(opr)
case('+')
	ans = a+b
case('-')
        ans = a-b
case('*')
        ans = a*b
case('/')
        ans = a/b
case default
	write(*,*) "unknown operator", opr
	stop
end select

write(*,"(F5.2,A1,F5.2,'=',F5.2)") a,opr,b,ans

stop
end
