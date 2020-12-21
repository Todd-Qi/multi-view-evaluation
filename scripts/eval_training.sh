#!/bin/bash

for scene in courtyard delivery_area electro facade kicker meadow office pipes playground relief relief_2 terrace terrains; do

nohup ../build/ETH3DMultiViewEvaluation \
    --reconstruction_ply_path /mnt/H/qiyh/UCSNet/ETH3D/point_clouds/${scene}.ply \
    --ground_truth_mlp_path /mnt/G1/Qingshsan/MVS_GT/ETH3D/${scene}/dslr_scan_eval/scan_alignment.mlp \
    --tolerances 0.02,0.1  #2cm 10cm threshold distance
		
done	

