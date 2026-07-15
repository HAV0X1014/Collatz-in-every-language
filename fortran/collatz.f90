! Written with <3 by @DrParanoya on 15/07/2026 (DD/MM/YYYY)
! I really like Fortran, it feels similar to COBOL, but way more modern and way better to use.

program read_values
  implicit none
  integer :: number, steps, peak
  real :: start, end

  print *, 'Please enter a positive integer to run the collatz conjecture on: '
  read(*,*) number
  if (number <= 0) then
    print *, 'Invalid input!'
	stop
  end if

  steps = 0
  peak = number

  call cpu_time(start)

  do while (number /= 1)
	if (mod(number, 2) == 0) then
      number = number / 2
	else
      number = number * 3 + 1
	end if

	if (number > peak) then
	  peak = number
	end if
      
	steps = steps + 1
  end do

  call cpu_time(end)

  print *, 'Steps to reach 1: ', steps 
  print *,'Peak number reached: ', peak
  print *, 'Time taken: ', end - start, ' seconds'

end program read_values
