# Elmer Parallel Demo input files (elmer_parallel_demo)
Elmer demo to do parallel runs (input files for YouTube video).

## Prerequisites

You need a big enough computer (min 6GB) with Gmsh and Elmer installed, the latter with both, OpenMP and MPI enabled
Recommended: ParaView for post processing

## Instructions

First create the serial mesh-file using Gmsh and ElmerGrid
```bash
$ gmsh -3 elmer_flow.geo && ElmerGrid 14 2 elemr_flow.msh -autoclean
```
Then try running the serial run (NB: run needs about 6 GB RAM)
```bash
$ ElmerSolver elmer_flow_gcr.sif
```
In order to partition the mesh into `N`-partitions (replace `N` with the number of available CPU cores)
```bash
$ ElmerGrid 2 2 elmer_flow -partdual -metiskway N
```
To run the previous case in parallel using MPI, launch with
```bash
$ mpirun -np N ElmerSolver elmer_flow_gcr.sif
```
To run with OMP mulit-threading instead (on serial mesh)
```bash
$ OMP_NUM_THREAD=N ElmerSolver elmer_flow_gcr.sif
```
