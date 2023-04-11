subroutine fmat(m) bind(c,name='fMat')
   use, intrinsic :: iso_c_binding
   type, bind(c) :: mat
      real(c_double), dimension(8) :: dat1
      real(c_double), dimension(4,5) :: dat2
   end type mat

   type(mat) :: m

   print *,'Vetor no Fortran:'
   print *,m%dat1

   print *,'Matriz no Fortran:'
   print *,m%dat2
end subroutine
