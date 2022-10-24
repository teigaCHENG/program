program ex435
implicit none
integer, parameter :: long_init = selected_int_kind(9)
integer, parameter :: short_init = selected_int_kind(3)
integer, parameter :: long_real = selected_real_kind(10,50)
integer, parameter :: short_real = selected_real_kind(3,3)

integer(kind=long_init) :: a=12345678
integer(kind=short_init) :: b =12
real(kind=long_real) :: c=1.23456789
real(kind=short_real) :: d=1234

write(*,"(I3,1X,I10)") long_init, a
write(*,"(I3,1X,I10)") short_init, b
write(*,"(I3,1X,E10.5)") long_real, c
write(*,"(I3,1X,F10.5)") short_real, d

stop
end

