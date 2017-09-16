
! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
Program frontend_gpl_torture
   use :: frontend_gpl_torture_mod, only: amount, gpltorture_conf, finalize, gpl_generator, input_unit, ios, force_sync,&
   &system_msg, output_unit, usr_msg
   use :: iso_c_binding, only: c_char, c_null_char, c_loc, c_null_ptr, c_ptr, c_int
   implicit none
   interface
      function execvp(file, argv) bind(C)
         import c_char, c_int, c_ptr
         character(kind = c_char), intent(in) :: file
         type(c_ptr), value, intent(in) :: argv
         integer(c_int) :: execvp
      end function execvp
      function fork() bind(C)
         import c_int
         integer(c_int) :: fork
      end function fork
!      function waitpid(pid,status, option) bind(C)
!         import c_int
!         integer(c_int), value, intent(in) :: pid
!         integer(c_int), intent(inout) :: status
!         integer(c_int), value, intent(in) :: option
!         integer(c_int) :: waitpid
!      end function waitpid
      function wait(status) bind(C)
         import c_int
         integer(c_int), intent(inout) :: status
         integer(c_int) :: wait
      end function wait      
   end interface
!
   integer(kind = c_int) :: pid, status, wpid = 1
   character(len = 30, kind = c_char), target :: exec_file
   character(len = 30, kind = c_char), target :: arg1
   character(len = 30, kind = c_char), target :: arg2
   type(c_ptr), target :: argv(0:3)   
!
   write (unit = output_unit, fmt = '(a/,a)', advance = 'no'&
        &) "How many files to generate (32767 maxi)?", "Please, enter a number: "
   read (unit = input_unit, fmt = '(i5)', iostat = ios, iomsg = system_msg&
        &) amount
   if (ios /= 0) call finalize()
   if (amount < 1 ) then
      usr_msg = "Bad number"
      call finalize()
   end if
   write(unit = arg2, fmt='(i0)') amount
   exec_file = "gpltorture_fortran" // c_null_char
   arg1 = "-n" // c_null_char
   arg2 = trim(arg2) // c_null_char
   argv = [c_loc(exec_file), c_loc(arg1), c_loc(arg2), c_null_ptr]
!  call gpltorture_conf() !!!! DO NOT DELETE
   call gpl_generator()
   call force_sync()
   pid = fork()
   if (pid < 0) call finalize()
   if (pid > 0) write(unit = output_unit, fmt = '(a,i0,a)', advance = 'no') "Run system call fork(): child process ", pid, "... "
   if (pid  == 0) then
      write (unit = output_unit, fmt = '(a,/,a)', advance = 'no') " OK", "Run system call execvp(): launching backend... "
      if (execvp(exec_file, argv) /= 0) then
         usr_msg = "Failed to launch backend"
         call finalize()
      end if
   end if
   wpid = wait(status)
   if (status /= 0) then
      write(unit = usr_msg, fmt ='(a,i0,a,i0)') "Child process ", wpid, " failed with status ", status
      call finalize()
   end if
   print'(a)',"Test completed. Bye!"
!
end program frontend_gpl_torture
