program newtont
  implicit real*8(a-h, o-z)
  external func, func1
  tol = 10.0D-6
  itr = 20
  x0 = 1
  n = 2
  call newton(x0, func, func1, n, x, itr, tol)
  write(*,*) x, m
  stop
end program newtont

function func(x,n)
  implicit real*8(a-h, o-z)
  func = x*x - n
  return
end function func

function func1(x)
  implicit real*8(a-h, o-z)
  func1 = 2*x
  return
end function func1

subroutine newton(x0, func, func1, n, x, m, itr, tol)
  implicit real*8(a-h, o-z)
  external func, func1
  m = 1
  do while (m <= itr)
     x = x0 -func(x0, n)/func1(x0)
     write(*,*) x, m
     if (DABS(x-x0) > tol) then
        x0 = x
        m = m + 1
     else
        return
     end if
  end do
  return
end subroutine newton

