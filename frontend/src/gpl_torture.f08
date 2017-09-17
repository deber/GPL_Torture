! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
Program gpltorture
!
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit
   use, intrinsic :: iso_c_binding, only: c_char, c_null_char, c_loc, c_null_ptr, c_ptr, c_int   
   use :: f_libc, only: execvp, fork, wait
   use :: gpl_torture, only: amount, gpltorture_conf, finalize, gpl_generator, ios, force_sync, system_msg, usr_msg
!
   implicit none
!
   integer(kind = c_int) :: pid, status, wpid = 1
   character(len = 30, kind = c_char), target :: exec_file, arg1, arg2
   type(c_ptr), target :: argv(0:3)   
!
   write (unit = output_unit, fmt = '(a/,a)', advance = 'no'&
        &) "How many files to generate (32767 maxi)?", "Please, enter a number: "
   read (unit = input_unit, fmt = '(i5)', iostat = ios, iomsg = system_msg) amount
   if (ios /= 0) call finalize()
   if (amount < 1 ) then
      usr_msg = "Bad number"
      call finalize()
   end if
   write (unit = arg2, fmt = '(i0)') amount
   exec_file = "gpltorture_fortran" // c_null_char
   arg1 = "-n" // c_null_char
   arg2 = trim(arg2) // c_null_char
   argv = [c_loc(exec_file), c_loc(arg1), c_loc(arg2), c_null_ptr]
!  call gpltorture_conf() !!!! DO NOT DELETE
   call gpl_generator()
   call force_sync()
   pid = fork()
   if (pid < 0) call finalize()
   if (pid > 0) write( unit = output_unit, fmt = '(a,i0,a)', advance = 'no') "Call fork(): child process ", pid, "... "
   if (pid  == 0) then
      write (unit = output_unit, fmt = '(a,/,a)', advance = 'no') "OK", "Call execvp(): Running backend... "
      if (execvp(exec_file, argv) /= 0) then
         usr_msg = "Failed to run backend"
         call finalize()
      end if
   end if
   wpid = wait(status)
   if (status /= 0) then
      write (unit = usr_msg, fmt = '(a,i0,a,i0)') "Child process ", wpid, " failed with status ", status
      call finalize()
   end if
   print'(a)',"Test completed. Bye!"
!
end program gpltorture
