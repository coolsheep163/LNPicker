#!/bin/env bash

# Normal Train
timestamp=$(date "+%Y%m%d%H%M%S")
CONFIG="path/to/config"
filename=$(basename "$CONFIG" | sed 's/\.[^.]*$//')
WORK_DIR="path/to/work_dir/${filename}_${timestamp}"

CUDA_VISIBLE_DEVICES=0 python ../tools/train.py $CONFIG \
                                                --work-dir $WORK_DIR \
                                                --gpu-ids 0 \
                                                --seed 123 \

## Resume
#CONFIG="path/to/config"
#filename=$(basename "$CONFIG" | sed 's/\.[^.]*$//')
#WORK_DIR="path/to/work_dir"
#RESUME="path/to/ckpt"
#
#CUDA_VISIBLE_DEVICES=2 python ../tools/train.py $CONFIG \
#                                                --work-dir $WORK_DIR \
#                                                --resume-from $RESUME \
#                                                --gpu-ids 0 \
#                                                --seed 123 \

