
! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
Program frontend_gpl_torture
   use :: frontend_gpl_torture_mod, only: amount, gpltorture_conf, finalize, gpl_generator, input_unit, ios, force_sync,&
   &system_msg, output_unit
   implicit none
!
   write (unit = output_unit, fmt = '(a)', advance = 'no'&
        &) "How many files do you want to be generated? (32767 maxi) Please, enter a number: "
   read (unit = input_unit, fmt = '(i5)', iostat = ios, iomsg = system_msg&
        &) amount
   if (ios /= 0) call finalize()
   if (amount < 1 ) stop "Bye!"
   call gpltorture_conf()
   call gpl_generator()
   call force_sync()
!
end program frontend_gpl_torture
