Program Frontend_GPL_Torture
   use, intrinsic ::  iso_fortran_env, only: output_unit
   implicit none
   
!
   character(len=*), parameter :: gpl3_1=&
   include 'gpl-3_1.inc'
   character(len=*), parameter :: gpl3_2=&
   include 'gpl-3_2.inc'
   character(len=*), parameter :: gpl3_3=&
   include 'gpl-3_3.inc'
   character(len=*), parameter :: gpl3=gpl3_1 // gpl3_2 // gpl3_3
   integer lu_gpl3
!
   open(newunit=lu_gpl3, file="gpl3.txt")
   write(unit=lu_gpl3, fmt='(a)') gpl3
!
end program Frontend_GPL_Torture
