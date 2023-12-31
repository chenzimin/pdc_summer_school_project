# PDC 2023 summer school project
The task of the project is to parallelize the code in `energy_storms.c` with OpenMP, HIP and MPI. This work is done by Zimin, Ziyi and Qian.

## How to compile

The parallelized version are `energy_storms_hip.hip`, `energy_storms_mpi.c`, and `energy_storms_omp.c`.

Compling all files through the `Makefile`:

```bash
make clean
make all
```

This will generate `energy_storm_seq`, `energy_storm_omp`, `energy_storm_hip` and `energy_storm_mpi`.

## How to run

When running on Dardel, we can first use the `env.sh` script to setup the enviroment. Then, we need to allocate the resource and then run the program. For example, for MPI, we can first allocate the node by:

```bash
./mpi_salloc.sh
```

Then, to run the MPI version:

```bash
srun -n 32 ./energy_storms_mpi 30000 test_files/test_02_a30k_p20k_w1
```

Check `omp_salloc.sh`, `hip_salloc.sh` and `mpi_salloc.sh` to see how to allocate the node for OpenMP, HIP and MPI. Example of usage can be found in `omp_time.sh`, `hip_time.sh` and `mpi_time.sh`.

## Repository structure

Apart from the files that are mentioned in above. We also have:

* `result` repository that contain the files generated from `omp_time.sh`, `hip_time.sh` and `mpi_time.sh`. They contain the running time of OpenMP, HIP and MPI on different layer size and number of particles.
* `notebook/graphs.ipynb` is the jupyter notebook that generates the plot showing how all program versions' running time scales with the layer size and number of particles.
* `energy_storms_mpi_new.c` and `energy_storms_omp_new.c` are our alternative solutions for MPI and OpenMP.
