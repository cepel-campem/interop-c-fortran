program interoptesting
   use, intrinsic :: iso_c_binding
   use, intrinsic :: iso_fortran_env
   implicit none

   interface
      subroutine makearray(data, n) bind(c)
         use, intrinsic :: iso_c_binding
         type(c_ptr)    :: data
         integer(kind=c_int), value :: n
      end subroutine makearray

      subroutine freearray(data, n) bind(c)
         use, intrinsic :: iso_c_binding
         type(c_ptr)    :: data
         integer(kind=c_int), value :: n
      end subroutine freearray
   end interface

   type(c_ptr) :: cdata
   integer, pointer, dimension(:) :: fdata
   integer                        :: n = 5

   call makearray(cdata, n);
   call c_f_pointer(cdata, fdata, [n])
   print *, 'fdata = ', fdata
   call freearray(cdata, n)

end program
