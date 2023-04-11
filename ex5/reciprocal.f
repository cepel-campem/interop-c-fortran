subroutine reciprocal(nr, nc, x, y) bind (c, name='reciprocal')
   use iso_c_binding
   implicit none
   integer (c_int), value :: nr
   integer (c_int), value :: nc
   real (c_float), intent (in) :: x(nr,nc)
   real (c_float), intent (out) :: y(nr.nc)

   y = 1.0/x
end subroutine reciprocal
