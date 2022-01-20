
# Elmer Parallel Demo input files (elmer_parallel_demo)
Elmer demo to do parallel runs (input files for [YouTube video](https://www.youtube.com/watch?v=84K6OxEKEjQ)).
Mind, that the numerical setup is incorrect in the sense that the Navier-Stokes equation is not resolving the non-linearity of the advection term. You can change that (but needs longer runtimes) by setting the `Nonlinear System Max Iterations` to a value large enough for the system to converge on that level (e.g., 50). All input files are provided without any warranty.

![elmer_flow](https://user-images.githubusercontent.com/6701631/112022294-d7cf8e80-8b3a-11eb-84ec-9a35f89399e5.gif)

## Prerequisites

You need a big enough computer (min 6GB) with Gmsh and Elmer installed, the latter with both, OpenMP and MPI enabled. 
Recommended: ParaView for post processing

## Instructions

First create the serial mesh-file using Gmsh and ElmerGrid
```bash
$ gmsh -3 elmer_flow.geo && ElmerGrid 14 2 elmer_flow.msh -autoclean
```
Then try running the serial run (NB: run needs about 6 GB RAM)
```bash
$ ElmerSolver elmer_flow_gcr.sif
```
In order to partition the mesh into `N`-partitions (replace `N` with the number of available CPU cores)
```bash
$ ElmerGrid 2 2 elmer_flow -partdual -metiskway N
```
To run the previous case in parallel using MPI, launch with (replace `N` with the number of available CPU cores)
```bash
$ mpirun -np N ElmerSolver elmer_flow_gcr.sif
```
To run with OMP multi-threading instead on serial mesh (replace `N` with the number of available CPU cores)
```bash
$ OMP_NUM_THREAD=N ElmerSolver elmer_flow_gcr.sif
```
## Further things to try
`elmer_flow_mumps.sif` contains a setup solving with MUMPS (needs to be included in Elmer installation), a parallel direct solver. `elmer_flow_BPC.sif` is a setup that utilizes the block pre-conditioner (BPC) for solution in parallel, using GCR as the outer iteration solver. If you have a special Elmer version including AMGX compiled (naturally, needs a NVIDIA GPU in your computer), you may try `elmer_flow_amgx.sif`


