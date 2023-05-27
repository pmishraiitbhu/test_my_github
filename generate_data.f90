program generate_data
  use iso_fortran_env
  implicit none
  integer, parameter :: num_points = 1000 ! Number of data points
  real(real64) :: time, speed
  integer :: i

  open(unit=10, file='speed_data.csv', status='replace')

  call random_seed()
  do i = 1, num_points
    call random_number(speed)
    time = real(i, real64)
    speed = 10.0 * speed
    write(10, *) time, speed
  end do

  close(unit=10)

end program generate_data

