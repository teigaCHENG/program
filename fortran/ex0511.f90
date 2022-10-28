program ex511
implicit none
character rlt
character*20 :: str1,str2

write(*,*) "string 1:"
read(*,"(A20)") str1
write(*,*) "string 2:"
read(*,"(A20)") str2

if (str1 >str2) then 
	rlt = '>'
else if (str1 == str2) then
	rlt = '='
else 
	rlt = '<'
end if

write(*,"('str1',A1,'str2')") rlt
stop
end
