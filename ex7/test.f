program test
   use, intrinsic :: iso_c_binding
   implicit none
   interface
      type(c_ptr) function funka() bind(c, name='funka')
         use, intrinsic :: iso_c_binding
         implicit none
      endfunction funka

      integer(c_int) function funkb(plep) bind(c, name='funkb')
         use, intrinsic :: iso_c_binding
         implicit none
         type(c_ptr), value, intent(in) :: plep
      endfunction funkb
   endinterface

   type(c_ptr) lhsa
   integer(c_int) lhsb

   lhsa = funka()
   lhsb = funkb(lhsa)
   write(*,*) 'the end'
   read(*,*)

endprogram test
