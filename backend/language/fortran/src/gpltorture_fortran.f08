! Copyright (C) 2017 Denis Bernard.
! License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
! This is free software: you are free to change and redistribute it.
! There is NO WARRANTY, to the extent permitted by law.
! Written by Denis Bernard.
!
program gpltorture_fortran
   implicit none
!
   integer, parameter :: size_of_gpl_file = 35207
   character(len = *), parameter :: gpl_file = 'gpl3.txt'
   character(len = *), parameter :: gpltorture_conf_file = 'benchmark.conf'
   integer(kind =2) :: amount
   integer :: i, ios, lu_gpltorture_conf, lu_gpl3, lu_page
   character(len = 5) :: last, next, pg_nbr, previous
   character(len = len(pg_nbr) + 10) :: page
   character(len = 256) :: system_msg = ""
   character(len = size_of_gpl_file) :: gpl3
   character(len=:), allocatable :: body, buffer, footer, header
!
!> 1. Read the amount from config file
!
   open (newunit = lu_gpltorture_conf, file = gpltorture_conf_file, action = 'read', iostat = ios, iomsg = system_msg)
   if (ios /= 0) error stop trim(system_msg)
   read (unit = lu_gpltorture_conf, fmt = *) amount
   if (ios /= 0) error stop trim(system_msg)
   close (unit = lu_gpltorture_conf)
!
!> 2. Load into memory the text of GPL licence
!
   open (newunit = lu_gpl3, file = gpl_file, access = 'stream', action = 'read', iostat = ios, iomsg = system_msg)
   if (ios /= 0) error stop trim(system_msg)
   read (unit = lu_gpl3, iostat = ios, iomsg = system_msg) gpl3
   if (ios /= 0) error stop trim(system_msg)
!
!> 3. Build HTML pages
!
  write(unit = last, fmt ='(i0.5)') amount
  body =&
     "<pre>" // new_line('a') //&
      gpl3 // new_line('a')
!
!> 3.1 Build HTML pages (from second one untill the previous of the last one)
!
  do i = 2, amount-1
     write(unit = pg_nbr, fmt ='(i0.5)') i
     write(unit = next, fmt ='(i0.5)') i + 1
     write(unit = previous, fmt ='(i0.5)') i - 1
     write(unit = page, fmt ='(a)') "page_" // pg_nbr // ".html"
     header =&
        "<!DOCTYPE html>" // new_line('a') //&
        "<html>" // new_line('a') //&
        "<head>" // new_line('a') //&
        "<meta charset=""UTF-8"" />" // new_line('a') //&
        "<title>GPL_Torture - " // pg_nbr // "</title>" // new_line('a') //&
        "</head>" // new_line('a') //&
        "<body>" // new_line('a') //&
        "<h1>GPL_Torture</h1>" // new_line('a') //&
        "<nav>" // new_line('a') //&
        "<hr />" // new_line('a') //&
        "<a href=""index.html"">[ << ]</a>&nbsp;" // new_line('a') //&
        "<a href=" // "page_"// previous // ".html" //">[ < ]</a>&nbsp;" // new_line('a') //&
        "<a href=" // "page_"// next // ".html" //">[ > ]</a>&nbsp;" // new_line('a') //&
        "<a href=" // "page_"// last // ".html" //">[ >> ]</a>" // new_line('a') //&
        "<hr />" // new_line('a') //&
        "</nav>" // new_line('a') //&
        "<h5>" // pg_nbr // " / " // last //"</h5>" // new_line('a')
     footer =&
        "</pre>" // new_line('a') //&
        "<footer>" // new_line('a') //&
        "<hr />" // new_line('a') //&
        "<address>" // new_line('a') //&
        "Powered by GPL_Torture" // new_line('a') //&
        "</address >" // new_line('a') //&
        "</footer>" // new_line('a') //&
        "</body>" // new_line('a') //&
        "</html>"// new_line('a')
        buffer = header // body // footer
     open (newunit = lu_page, file = page, action = 'write', iostat = ios, iomsg = system_msg)
     if (ios /= 0) error stop trim(system_msg)
     write(unit = lu_page, fmt = '(a)', iostat = ios, iomsg = system_msg) buffer
     if (ios /= 0) error stop trim(system_msg)
     close (unit = lu_page)
     if (ios /= 0) error stop trim(system_msg)
  end do
!
  deallocate (buffer)
  deallocate (footer)
  deallocate (header)
  deallocate (body)
!
end program gpltorture_fortran
