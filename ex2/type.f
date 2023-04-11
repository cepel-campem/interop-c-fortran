module type_def
  use iso_c_binding
  implicit none
  private
  type, public, bind(c) :: t_type
     integer(c_int) :: count
     real(c_float) :: data
  end type t_type
end module type_def