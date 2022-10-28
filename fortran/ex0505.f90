program ex505
implicit none

integer score
character grade

write(*,*) "score:"
read(*,*) score
! write(*,*) "grade:"
! read(*,*) grade

if ( score > 90 .and. score <= 100 ) then
	grade = 'A'
else if (score > 80 .and. score <= 90 ) then
	grade = 'B'
else if (score > 70 .and. score <= 80 ) then
         grade = 'C'
else if (score > 60 .and. score <= 70 ) then
         grade = 'D'
else if (score > 0 .and. score <= 60 ) then 
	grade = 'E'
else 
	grade = '?'
end if
write(*,"(A8,A1)") "grade=", grade
stop
end


