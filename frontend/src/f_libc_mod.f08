! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
module f_libc
!
   use :: iso_c_binding, only: c_char, c_ptr, c_int
!   
   interface f_execvp
      function execvp(file, argv) bind(C)
         import c_char, c_int, c_ptr
         character(kind = c_char), intent(in) :: file
         type(c_ptr), value, intent(in) :: argv
         integer(c_int) :: execvp
      end function execvp
   end interface
!   
   interface f_fork
      function fork() bind(C)
         import c_int
         integer(c_int) :: fork
      end function fork
   end interface
!
   interface f_wait
      function wait(status) bind(C)
         import c_int
         integer(c_int), intent(inout) :: status
         integer(c_int) :: wait
      end function wait      
   end interface
!   
end module f_libc
