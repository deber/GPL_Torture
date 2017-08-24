module frontend_gpl_torture_mod
   use, intrinsic ::  iso_fortran_env, only: input_unit, output_unit
   implicit none
!
   character(len=*), parameter :: gpl_file = 'gpl3.txt'
   character(len=*), parameter :: gpl3_1=&
   include 'gpl-3_1.inc'
   character(len=*), parameter :: gpl3_2=&
   include 'gpl-3_2.inc'
   character(len=*), parameter :: gpl3_3=&
   include 'gpl-3_3.inc'
   character(len=*), parameter :: gpl3=gpl3_1 // gpl3_2 // gpl3_3
!
   integer :: amount, ios, lu_gpl3
   character(len=256) :: system_msg=""
!
   interface
      subroutine sync() bind(c)
      end subroutine sync
   end interface
!
contains
!
   subroutine gpl_generator()
      open(newunit= lu_gpl3, file= gpl_file, action= 'write',iostat= ios, iomsg = system_msg)
      if (ios /= 0) call finalize()
      write(unit= lu_gpl3, fmt='(a)',iostat= ios, iomsg= system_msg&
           &) gpl3
      if (ios /= 0) call finalize()
      close(unit= lu_gpl3)
      if (ios /= 0) call finalize()
      print'(3a)', "File ", gpl_file, " created"
   end subroutine gpl_generator
!
   subroutine force_sync()
      write(unit= output_unit, fmt= '(a)', advance= 'no'&
           &) "Run system call sync()... "
      call sync()
      print'("done")'
   end subroutine force_sync
!
   subroutine finalize()
      error stop trim(system_msg)
   end subroutine finalize
!
end module frontend_gpl_torture_mod
