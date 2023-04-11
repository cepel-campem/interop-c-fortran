module funcao_test
   !> Testes de passagem de dados
   use, intrinsic :: ISO_C_BINDING
   implicit none

contains
   subroutine funcao1(n, d) bind (c, name='funcao1')
      integer(c_int), intent(in), value :: n
      real(c_double), intent(in) :: d(n)

      print *, d
   end subroutine funcao1

   subroutine funcao2(c) bind (c, name='funcao2')
      complex(c_double_complex), intent(in), value :: c

      print *, c
   end subroutine funcao2

   subroutine funcao3(n, c) bind (c, name='funcao3')
      integer(c_int), intent(in), value :: n
      complex(c_double_complex), intent(in) :: c(n)

   end subroutine funcao3
end module
