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
   integer(kind = 2) :: amount
   integer :: argc, i, ios, lu_gpl3, lu_page, m, n
   character(len = 5) :: last, next, pg_nbr, previous
   character(len = len(pg_nbr) + 10) :: page
   character(len = 256) :: system_msg = ""
   character(len = size_of_gpl_file) :: gpl3
   character(len = :), allocatable :: body, buffer, footer, header
   character(len = 32) :: amount_txt = ""
   character(len = 32),allocatable :: argv(:)
   character(80) :: cmd
!
! Banner
!
   print'(a)', "OK"
   print'(a)', "Backend for GPL_Torture", "Copyright (C) 2017 Denis Bernard"
!
!> 1. Read the amount
!
   call get_command(cmd)
!!!!print'(2a)',"Ligne de commande = ",trim(cmd)
   argc= command_argument_count()
!!!!print'(a,g0)',"argc = ", argc
   allocate (argv (0 : argc))
   do n = 0, argc
     call get_command_argument(n, argv(n))
   end do
   if (argc == 0 .or. argc > 2) call finalize()
   do m = 0, argc
      if (argv(m) == "-n" .or. argv(m) == "--iteration") then
         if (m >= argc) call finalize()
         amount_txt = argv(m + 1)
      end if   
   end do
   if (trim(amount_txt) == "") call finalize()
   read (unit = amount_txt, fmt = *, iostat = ios, iomsg = system_msg ) amount
   if (ios /= 0 .or. amount < 1) call finalize()
!!!!!!!print'(3a)',   argv
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
  if (allocated(buffer)) deallocate (buffer)
  if (allocated(footer)) deallocate (footer)
  if (allocated(header)) deallocate (header)
  if (allocated(body)) deallocate (body)
!
  print'(a)', "End of the backend run"
  stop
contains
!
   subroutine finalize()
      if (ios /= 0)  print '(a)', trim(system_msg) 
      error stop new_line('a') // "Usage: " // trim(argv(0)) // " [-n | --iteration] [value (maxi: 32767)]"
   end subroutine finalize
!   
end program gpltorture_fortran
