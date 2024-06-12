# try various hyperparameter combinations

# lat_dim = 1
python example.py --use_cuda 1 --en_layers 3 --hid_dim 400 --epoch 200 --lat_dim 1 --expname exp_3_400_200_1 > logs/exp_3_400_200_1.txt

python example.py --use_cuda 1 --en_layers 4 --hid_dim 800 --epoch 200 --lat_dim 1 --expname exp_4_800_200_1 > logs/exp_4_800_200_1.txt

python example.py --use_cuda 1 --en_layers 5 --hid_dim 1200 --epoch 200 --lat_dim 1 --expname exp_5_1200_200_1 > logs/exp_5_1200_200_1.txt

python example.py --use_cuda 1 --en_layers 6 --hid_dim 1600 --epoch 200 --lat_dim 1 --expname exp_6_1600_200_1 > logs/exp_6_1600_200_1.txt

# lat_dim = 2
python example.py --use_cuda 1 --en_layers 3 --hid_dim 400 --epoch 200 --lat_dim 2 --expname exp_3_400_200_2 > logs/exp_3_400_200_2.txt

python example.py --use_cuda 1 --en_layers 4 --hid_dim 800 --epoch 200 --lat_dim 2 --expname exp_4_800_200_2 > logs/exp_4_800_200_2.txt

python example.py --use_cuda 1 --en_layers 5 --hid_dim 1200 --epoch 200 --lat_dim 2 --expname exp_5_1200_200_2 > logs/exp_5_1200_200_2.txt

python example.py --use_cuda 1 --en_layers 6 --hid_dim 1600 --epoch 200 --lat_dim 2 --expname exp_6_1600_200_2 > logs/exp_6_1600_200_2.txt

# lat_dim = 3
python example.py --use_cuda 1 --en_layers 3 --hid_dim 400 --epoch 200 --lat_dim 3 --expname exp_3_400_200_3 > logs/exp_3_400_200_3.txt

python example.py --use_cuda 1 --en_layers 4 --hid_dim 800 --epoch 200 --lat_dim 3 --expname exp_4_800_200_3 > logs/exp_4_800_200_3.txt

python example.py --use_cuda 1 --en_layers 5 --hid_dim 1200 --epoch 200 --lat_dim 3 --expname exp_5_1200_200_3 > logs/exp_5_1200_200_3.txt

python example.py --use_cuda 1 --en_layers 6 --hid_dim 1600 --epoch 200 --lat_dim 3 --expname exp_6_1600_200_3 > logs/exp_6_1600_200_3.txt

# lat_dim = 100
python example.py --use_cuda 1 --en_layers 3 --hid_dim 400 --epoch 200 --lat_dim 100 --expname exp_3_400_200_100 > logs/exp_3_400_200_100.txt

python example.py --use_cuda 1 --en_layers 4 --hid_dim 800 --epoch 200 --lat_dim 100 --expname exp_4_800_200_100 > logs/exp_4_800_200_100.txt

python example.py --use_cuda 1 --en_layers 5 --hid_dim 1200 --epoch 200 --lat_dim 100 --expname exp_5_1200_200_100 > logs/exp_5_1200_200_100.txt

python example.py --use_cuda 1 --en_layers 6 --hid_dim 1600 --epoch 200 --lat_dim 100 --expname exp_6_1600_200_100 > logs/exp_6_1600_200_100.txt

# lat_dim = 200
python example.py --use_cuda 1 --en_layers 3 --hid_dim 400 --epoch 200 --lat_dim 200 --expname exp_3_400_200_200 > logs/exp_3_400_200_200.txt

python example.py --use_cuda 1 --en_layers 4 --hid_dim 800 --epoch 200 --lat_dim 200 --expname exp_4_800_200_200 > logs/exp_4_800_200_200.txt

python example.py --use_cuda 1 --en_layers 5 --hid_dim 1200 --epoch 200 --lat_dim 200 --expname exp_5_1200_200_200 > logs/exp_5_1200_200_200.txt

python example.py --use_cuda 1 --en_layers 6 --hid_dim 1600 --epoch 200 --lat_dim 200 --expname exp_6_1600_200_200 > logs/exp_6_1600_200_200.txt

# lat_dim = 300
python example.py --use_cuda 1 --en_layers 3 --hid_dim 400 --epoch 200 --lat_dim 300 --expname exp_3_400_200_300 > logs/exp_3_400_200_300.txt

python example.py --use_cuda 1 --en_layers 4 --hid_dim 800 --epoch 200 --lat_dim 300 --expname exp_4_800_200_300 > logs/exp_4_800_200_300.txt

python example.py --use_cuda 1 --en_layers 5 --hid_dim 1200 --epoch 200 --lat_dim 300 --expname exp_5_1200_200_300 > logs/exp_5_1200_200_300.txt

python example.py --use_cuda 1 --en_layers 6 --hid_dim 1600 --epoch 200 --lat_dim 300 --expname exp_6_1600_200_300 > logs/exp_6_1600_200_300.txt