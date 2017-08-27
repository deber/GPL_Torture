module frontend_gpl_torture_mod
   use, intrinsic ::  iso_fortran_env, only: input_unit, output_unit
   use gpl3_mod, only: license_gpl3
   implicit none
!
   character(len = *), parameter :: gpl_file = 'gpl3.txt'
   character(len = *), parameter :: benchmark_conf_file = 'benchmark.conf'
!
   integer :: ios, lu_benchmark_conf, lu_gpl3
   integer(kind=2) :: amount
   character(len=256) :: system_msg = ""
!
   interface
      subroutine sync() bind(c)
      end subroutine sync
   end interface
!
contains
!
   subroutine benchmark_conf()
      open (newunit = lu_benchmark_conf, file = benchmark_conf_file, action = 'write', iostat = ios, iomsg = system_msg)
      if (ios /= 0) call finalize()
      write (unit = lu_benchmark_conf, fmt = '(i0)',iostat = ios, iomsg = system_msg&
           &) amount
      if (ios /= 0) call finalize()
      close (unit = lu_benchmark_conf)
   end subroutine benchmark_conf
!   
   subroutine gpl_generator()
      open (newunit = lu_gpl3, file = gpl_file, action = 'write', iostat = ios, iomsg = system_msg)
      if (ios /= 0) call finalize()
      write (unit = lu_gpl3, fmt ='(a)', iostat = ios, iomsg = system_msg&
           &) license_gpl3
      if (ios /= 0) call finalize()
      close (unit = lu_gpl3)
      if (ios /= 0) call finalize()
      print '(3a)', "File ", gpl_file, " created"
   end subroutine gpl_generator
!
   subroutine force_sync()
      write (unit = output_unit, fmt = '(a)', advance = 'no'&
           &) "Run system call sync()... "
      call sync()
      print '("done")'
   end subroutine force_sync
!
   subroutine finalize()
      error stop trim(system_msg)
   end subroutine finalize
!
end module frontend_gpl_torture_mod
