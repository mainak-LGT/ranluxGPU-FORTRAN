# ranluxGPU-FORTRAN

FORTRAN Interface to an existing CUDA C/C++ implementation of RANLUX PRNG for generating random numbers on GPGPUs.

The advantage is that we don't need to copy random numbers from CPU to GPU which is very time consuming. With this code we can 
generate random numbers on the GPU itself and use them directly for running Monte Carlo simulation kernels which run in parallel 
on the GPU without having to copy them from CPU

Example of how to use this generator from FORTRAN is given in randTest.f90 file. For testing execute the run.sh file
