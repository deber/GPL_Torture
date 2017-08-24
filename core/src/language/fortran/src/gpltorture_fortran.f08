! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
program gpltorture_fortran
   implicit none
!   
   integer, parameter :: size_of_gpl_file = 35147
   character(len = *), parameter :: gpl_file = 'gpl3.txt'
   character(len = *), parameter :: benchmark_conf_file = 'benchmark.conf'
   integer :: amount, ios, lu_benchmark_conf, lu_gpl3
   character(len = 256) :: system_msg = ""
   character(len = size_of_gpl_file) :: gpl3
   character(len=:), allocatable :: buffer
!
   open (newunit = lu_benchmark_conf, file = benchmark_conf_file, action = 'read', iostat = ios, iomsg = system_msg)
   if (ios /= 0) error stop trim(system_msg)
   read (unit = lu_benchmark_conf, fmt = *) amount
   if (ios /= 0) error stop trim(system_msg)
   close (unit = lu_benchmark_conf)
   open (newunit = lu_gpl3, file = gpl_file, access = 'stream', action = 'read', iostat = ios, iomsg = system_msg)
   if (ios /= 0) error stop trim(system_msg)
   read (unit = lu_gpl3, iostat = ios, iomsg = system_msg) gpl3
   if (ios /= 0) error stop trim(system_msg)
print '(a)', gpl3   
!
end program gpltorture_fortran
