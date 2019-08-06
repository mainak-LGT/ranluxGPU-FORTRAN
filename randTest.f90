program main
  use, intrinsic :: iso_c_binding
  use cudafor
  use CudaRandF
  implicit none
  
  integer, parameter :: buff = 512*1024*1024
  integer, parameter :: seed = 314159265
  integer, parameter :: l = 32
  integer, parameter :: nSites = l*l
  type(CudaRand_generator) :: pCR
  type(C_devptr) :: x_d
  real(C_float), device, pointer :: xx_d(:)
  real(C_float) :: y(nSites)
  integer, parameter :: nUpdates = 5000000
  integer :: updates,istat
  
  call setRandom(pCR,buff,seed)
  
 
 do updates = 1,nUpdates
  call getRandom(x_d,pCR,nSites)
  call c_f_pointer(x_d,xx_d,(/nSites/))
  y = xx_d
  print*,updates,y(1)
 enddo
  

end program main

