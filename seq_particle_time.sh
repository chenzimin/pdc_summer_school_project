for run in {1..10}; do
  srun -n 1 ./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1 >> seq_a30k_w1_time.txt
done

for run in {1..10}; do
  srun -n 1 ./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1 \
                                      test_files/test_02_a30k_p20k_w2 >> seq_a30k_w2_time.txt
done

for run in {1..10}; do
  srun -n 1 ./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1 \
                                      test_files/test_02_a30k_p20k_w2 \
                                      test_files/test_02_a30k_p20k_w3 >> seq_a30k_w3_time.txt
done

for run in {1..10}; do
  srun -n 1 ./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1 \
                                      test_files/test_02_a30k_p20k_w2 \
                                      test_files/test_02_a30k_p20k_w3 \
                                      test_files/test_02_a30k_p20k_w4 >> seq_a30k_w4_time.txt
done

for run in {1..10}; do
  srun -n 1 ./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1 \
                                      test_files/test_02_a30k_p20k_w2 \
                                      test_files/test_02_a30k_p20k_w3 \
                                      test_files/test_02_a30k_p20k_w4 \
                                      test_files/test_02_a30k_p20k_w5 >> seq_a30k_w5_time.txt
done

for run in {1..10}; do
  srun -n 1 ./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1 \
                                      test_files/test_02_a30k_p20k_w2 \
                                      test_files/test_02_a30k_p20k_w3 \
                                      test_files/test_02_a30k_p20k_w4 \
                                      test_files/test_02_a30k_p20k_w5 \
                                      test_files/test_02_a30k_p20k_w6 >> seq_a30k_w6_time.txt
done