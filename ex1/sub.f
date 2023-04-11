subroutine my_sub(a, b, c) bind(c)
   use, intrinsic :: iso_c_binding
   implicit none
   real(c_float) :: a, b, c
   c = a * b
end subroutine my_sub
