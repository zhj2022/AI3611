#!/bin/bash

# baseline
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling no --sample_k 1

# linear
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling linear --sample_k 0.005
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling linear --sample_k 0.010
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling linear --sample_k 0.015
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling linear --sample_k 0.020
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling linear --sample_k 0.025

# exp
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling exp --sample_k 0.95
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling exp --sample_k 0.96
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling exp --sample_k 0.97
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling exp --sample_k 0.98
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling exp --sample_k 0.99

# sigmoid
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 7
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 8
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 9
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 10
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 11
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 12
python main.py train_evaluate --config_file configs/resnet101_attention.yaml --schedule_sampling sigmoid --sample_k 13
