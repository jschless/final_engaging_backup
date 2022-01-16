#!/bin/bash

#SBATCH -c 2
#SBATCH --mem=128G
#SBATCH -p sched_mit_sloan_interactive
#SBATCH --time=6-00:00
#SBATCH -o notebook_%A.out

IP=`hostname -i`
PORT=`shuf -i 2000-65000 -n 1`

module load anaconda3;
source activate jupyter-env;

jupyter notebook --ip=$IP --port=$PORT --no-browser
# $HOME/anaconda3/bin/jupyter notebook --ip=$IP --port=$PORT --no-browser
