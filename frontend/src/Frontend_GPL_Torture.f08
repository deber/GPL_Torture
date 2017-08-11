! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
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
   integer :: ios, lu_gpl3
   character(len=256) :: system_msg=""
!
   open(&
       newunit= lu_gpl3,&
       file   = 'gpl3.txt',&
       action = 'write',&
       status = 'new',&
       iostat = ios,&
       iomsg  = system_msg&
       )
   if (ios /= 0) call finalyse()    
   write(&
        unit   = lu_gpl3,&
        fmt    ='(a)',&
        iostat = ios,&        
        iomsg  = system_msg&
        ) gpl3
   if (ios /= 0) call finalyse()
!
   contains
!
   subroutine finalyse()
      error stop trim(system_msg)
   end subroutine finalyse
end program Frontend_GPL_Torture
