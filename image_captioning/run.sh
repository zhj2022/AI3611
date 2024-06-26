#!/bin/bash

#SBATCH --job-name=train
#SBATCH -p dgx2
#SBATCH -N 1
#SBATCH -c 6
#SBATCH --gres gpu:1
#SBATCH --output=slurm_logs/%j.out
#SBATCH --error=slurm_logs/%j.err

__conda_setup="$('/lustre/home/acct-stu/stu282/Tools/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/lustre/home/acct-stu/stu282/Tools/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/lustre/home/acct-stu/stu282/Tools/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/lustre/home/acct-stu/stu282/Tools/miniconda3/bin:$PATH"
    fi
fi

export PATH="/lustre/home/acct-stu/stu282/Tools/miniconda3/envs/py3.10.11:$PATH"
conda config --set auto_activate_base false
conda init
conda activate py3.10.11

# when schedule_sampling is set to "no", sample_k makes no sense
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling no --sample_k 1
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling linear --sample_k 0.02
