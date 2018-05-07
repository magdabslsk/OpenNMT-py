#!/bin/bash
#SBATCH -p veu # Partition to submit to
#SBATCH --mem=30G # Memory
#SBATCH --gres=gpu:4
#SBATCH --ignore-pbs
#SBATCH --output=translate_gigaword_copy_acc_51.78_ppl_11.71_e20.log

stdbuf -i0 -o0 -e0  python ../../../../translate.py -model gigaword_copy_acc_51.78_ppl_11.71_e20.pt -src ../data/Giga/input.txt -output pred_gigaword_copy_acc_51.78_ppl_11.71_e20.txt -replace_unk -verbose
