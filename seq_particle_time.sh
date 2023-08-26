#!/bin/bash

curent_dir=$(pwd)

directory="${curent_dir}/result/num_particles"
filename_prefix="test_02_a30k_p20k_w"
test_files=""
mkdir -p "${directory}"

for i in {1..6}; do
    test_files="${test_files} ${curent_dir}/test_files/${filename_prefix}${i}"
    output_file="${directory}/seq_a30k_w${i}_time.txt"
    for times in {1..10}; do
        srun -n 1 "${curent_dir}/energy_storms_seq" 30000 ${test_files} >> "${output_file}"
    done
done

directory="${curent_dir}/result/num_layer"
test_files="${curent_dir}/test_files/test_02_a30k_p20k_w1"
num_layer=1
mkdir -p "${directory}"
for i in {1..20}; do
    output_file="${directory}/seq_a"${num_layer}"_w1_time.txt"
    for times in {1..10}; do
        srun -n 1 "${curent_dir}/energy_storms_seq" ${num_layer} ${test_files} >> "${output_file}"
    done
    num_layer=$(( 2*num_layer ))
done
