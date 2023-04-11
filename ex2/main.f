program fortran_calls_c
   use type_def
   use iso_c_binding
   implicit none

   type(t_type) :: t
   real(c_float) :: x, y
   integer(c_int), dimension(0:1, 0:2) :: a

   interface
      subroutine funcc(tp, arr, a, b, m) bind(c, name='funcc')
         use type_def
         use iso_c_binding
         type(t_type) :: tp
         integer(c_int), dimension(0:1, 0:2) :: arr
         real(c_float) :: a, b
         character(c_char), dimension(*) :: m
      end subroutine funcc
   end interface

   t = t_type(count=99, data=9.9)
   x = 1.1
   a = reshape([1, 2, 3, 4, 5, 6], shape(a))
   call funcc(t, a, x, y, "doubling x" // c_null_char)
   print *, x, y
   print *, t
   print *, a
end program fortran_calls_c
