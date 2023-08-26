#!/bin/bash

directory="result/num_particles"
filename_prefix="test_02_a30k_p20k_w"
test_files=""
mkdir -p "${directory}"

for i in {1..6}; do
    test_files="${test_files} test_files/${filename_prefix}${i}"
    output_file="${directory}/seq_a30k_w${i}_time.txt"
    for times in {1..10}; do
        srun -n 1 ./energy_storms_seq 30000 "${test_files}" >> "${output_file}"
    done
done
