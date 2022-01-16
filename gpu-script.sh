#!/bin/bash

#SBATCH -c 2
#SBATCH --mem=64G
#SBATCH -p sched_mit_sloan_gpu
#SBATCH --time=0-10:00
#SBATCH -o gpu_script_%A.out
#SBATCH --gres=gpu:4

module load sloan/pytorch/1.6.0_py3.6_cuda10.2.89_cudnn7.6.5_0
module load python/3.6.3


python ./whatsapp/TwitterCoordination/encode_sentences.py
# python ./whatsapp/TwitterCoordination/hdbscan_script.py
# python ./whatsapp/TwitterCoordination/nearest_neighbors_revised.py
# python ./whatsapp/TwitterCoordination/nearest_neighbors_script.py
# python ./whatsapp/TwitterCoordination/exposure_script.py
# python ./whatsapp/TwitterCoordination/new_network_exposures.py
