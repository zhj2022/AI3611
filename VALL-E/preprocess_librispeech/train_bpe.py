import sentencepiece as spm

spm.SentencePieceTrainer.train(
    input='preprocess_librispeech/train960_trans.txt', 
    model_prefix='preprocess_librispeech/train960_size2000', 
    vocab_size=2000, 
    character_coverage=1.0,
    model_type='bpe'
)