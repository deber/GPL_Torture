! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
Program Frontend_GPL_Torture
   use, intrinsic ::  iso_fortran_env, only: input_unit, output_unit
   implicit none
!   
   interface
      subroutine sync() bind(c)
      end subroutine sync
   end interface
!
   character(len=*), parameter :: gpl_file = 'gpl3.txt'
   character(len=*), parameter :: gpl3_1=&
   include 'gpl-3_1.inc'
   character(len=*), parameter :: gpl3_2=&
   include 'gpl-3_2.inc'
   character(len=*), parameter :: gpl3_3=&
   include 'gpl-3_3.inc'
   character(len=*), parameter :: gpl3=gpl3_1 // gpl3_2 // gpl3_3
   integer :: amount, ios, lu_gpl3, size_of_gpl_file, t(8) 
   character(len=256) :: system_msg=""
!
   enum, bind(c)
      enumerator :: year=1, month, day, hour=5, min, sec, ms
   end enum
!
   write(&
        unit    = output_unit,&
        fmt     = '(a)',&
        advance = 'no'&
          ) "How many files you want to be generated? Please, enter a number: "
   read (&
        unit   =  input_unit,&
        fmt    = '(i6)',&
        iostat = ios,&
        iomsg  = system_msg&        
        ) amount
   if (ios /= 0) call finalyse()        
   open(&
       newunit= lu_gpl3,&
       file   =  gpl_file,&
       action = 'write',&
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
   close(unit = lu_gpl3)
   inquire(&
          file = gpl_file,&
          size = size_of_gpl_file,&
        iostat = ios,&                
        iomsg  = system_msg&          
        )
   if (ios /= 0) call finalyse()
   print'("File ",a,", size=",g0, " bytes created")', gpl_file, size_of_gpl_file
   write(&   
        unit    = output_unit,&   
        fmt     = '(a)',&   
        advance = 'no'&!
          ) "Run system call sync()... "
   call sync()       
   print'("done")'
   call date_and_time(values= t(1:8))
   print'(i0.4,"-",i0.2,"-",i0.2,"  ",i0.2,":",i0.2,":",i0.2,".",i0.3)',&
         t(year), t(month), t(day), t(hour),t(min),t(sec),t(ms)
!   
   contains
!
   subroutine finalyse()
      error stop trim(system_msg)
   end subroutine finalyse
end program Frontend_GPL_Torture
