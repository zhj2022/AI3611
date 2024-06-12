# python main.py --data data/gigaspeech --cuda --epochs 6

# LSTM
# nlayers [2, 3], emsize [100, 200, 300, 400], nhid [100, 200, 300, 400]
for nlayers in 2 3
    do
    for emsize in 100 200 300 400
        do
        for nhid in 100 200 300 400
            do
            python main.py --data data/gigaspeech --cuda --epochs 6 --model LSTM --nlayers $nlayers --emsize $emsize --nhid $nhid > logs/LSTM_$nlayers\_$emsize\_$nhid.txt
            done
        done
    done

# GRU
# nlayers [2, 3, 4], emsize [100, 200, 300, 400], nhid [100, 200, 300, 400]
for nlayers in 2 3 4
    do
    for emsize in 100 200 300 400
        do
        for nhid in 100 200 300 400
            do
            python main.py --data data/gigaspeech --cuda --epochs 6 --model GRU --nlayers $nlayers --emsize $emsize --nhid $nhid > logs/GRU_$nlayers\_$emsize\_$nhid.txt
            done
        done
    done

# Transformer
# nlayers [2, 3, 4], n_head [2, 10], emsize [100, 200, 400], nhid [100, 200, 400]
for nlayers in 2 3 4
    do
    for emsize in 100 200 400
        do
        for nhid in 100 200 400
            do
            for nhead in 2 10
                do
                python main.py --data data/gigaspeech --cuda --epochs 6 --model Transformer --nlayers $nlayers --emsize $emsize --nhid $nhid --nhead $nhead > logs/Transformer_$nlayers\_$emsize\_$nhid\_$nhead.txt
                done
            done
        done
    done

# RNN_TANH
# nlayers [2, 3], emsize [100, 200, 300, 400], nhid [100, 200, 300, 400]
for nlayers in 2 3
    do
    for emsize in 100 200 300 400
        do
        for nhid in 100 200 300 400
            do
            python main.py --data data/gigaspeech --cuda --epochs 6 --model RNN_TANH --nlayers $nlayers --emsize $emsize --nhid $nhid > logs/RNN_TANH_$nlayers\_$emsize\_$nhid.txt
            done
        done
    done

# RNN_RELU
# nlayers [2, 3], emsize [100, 200, 300, 400], nhid [100, 200, 300, 400]
for nlayers in 2 3
    do
    for emsize in 100 200 300 400
        do
        for nhid in 100 200 300 400
            do
            python main.py --data data/gigaspeech --cuda --epochs 6 --model RNN_RELU --nlayers $nlayers --emsize $emsize --nhid $nhid > logs/RNN_RELU_$nlayers\_$emsize\_$nhid.txt
            done
        done
    done