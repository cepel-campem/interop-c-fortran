subroutine fsub(p) bind(c,name='fSub')
   use, intrinsic :: iso_c_binding
   type, bind(c) :: pprop
      real(c_double) :: x1,x2,x3,x4
   end type pprop

   type(pprop) :: p

   p = pprop(1d0,1d-3,2d0,2d3)
   return
end subroutine

