program ex434
implicit none
type :: person
	character*30 :: name
	integer ::age
	integer :: heit
	integer :: weit
	character*80 :: add
end type person
type(person) :: a
write(*,*) "name:"
read(*,*) a%name
write(*,*) "age:"
read(*,*) a%age
write(*,*) "heit:"
read(*,*) a%heit
write(*,*) "weit:"
read(*,*) a%weit
write(*,*) "add:"
read(*,*) a%add

write(*,100) a%name, a%age,a%heit,a%weit,a%add
100 format(/,"name:",A10/,"age:",I3/,"heit:",I3/,"weit:",I3/,"add:",A50)
stop
end

