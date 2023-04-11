module lib_code
   use iso_c_binding
   type :: problem_struct
      real, allocatable :: a(:)
   end type
contains
   type(c_ptr) function new_problem(problem_size) bind(c)
      integer(c_size_t), value :: problem_size
      type(problem_struct), pointer :: problem_ptr
      allocate(problem_ptr)
      allocate(problem_ptr%a(problem_size))
      new_problem = c_loc(problem_ptr)
   end function new_problem

   subroutine add(problem) bind(c)
      type(c_ptr), intent(in), value :: problem
      type(problem_struct), pointer :: problem_ptr
      call c_f_pointer(problem, problem_ptr)
   end subroutine add

   subroutine goodbye(problem) bind(c)
      type(c_ptr), intent(in), value :: problem
      type(problem_struct), pointer :: problem_ptr
      call c_f_pointer(problem, problem_ptr)
      deallocate(problem_ptr)
   end subroutine goodbye
end module lib_code
