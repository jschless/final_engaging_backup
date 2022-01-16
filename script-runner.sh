#!/bin/bash

#SBATCH -c 2
#SBATCH --mem=128G
#SBATCH -p sched_mit_sloan_interactive
#SBATCH --time=7-00:00
#SBATCH -o script_%A.out


# module load python/3.6.3
module load anaconda3;
source activate gt;

python exposure_test.py
# python Turkey_Analysis.py
# python ./whatsapp/TwitterCoordination/follower_hydration.py
# python ./whatsapp/TwitterCoordination/encode_sentences.py
# python ./whatsapp/TwitterCoordination/hdbscan_script.py
# python ./whatsapp/TwitterCoordination/nearest_neighbors_revised.py
# python ./whatsapp/TwitterCoordination/nearest_neighbors_script.py
# python ./whatsapp/TwitterCoordination/exposure_script.py
# python ./whatsapp/TwitterCoordination/new_network_exposures.py
