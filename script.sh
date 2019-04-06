python3 run_squad.py --bert_model bert-base-uncased --do_train --do_predict --do_lower_case --train_file ../data/squad/train-v1.1.json --predict_file ../data/squad/dev-v1.1.json --train_batch_size 4 --learning_rate 3e-5 --num_train_epochs 2.0 --max_seq_length 384 --doc_stride 128 --output_dir ../output/squad_1
python3 run_natural_qa.py --bert_model bert-base-uncased --do_train --do_lower_case --train_file ../data/natural_questions/v1.0/train/nq-train-00.jsonl --train_batch_size 2 --learning_rate 3e-5 --num_train_epochs 1.0 --max_seq_length 512 --doc_stride 128 --output_dir ../output/nq_2
python3 run_natural_qa.py --bert_model bert-base-uncased --do_train --do_lower_case --train_file ../data/natural_questions/v1.0/train/nq-train-00.jsonl --train_batch_size 2 --learning_rate 3e-5 --num_train_epochs 1.0 --max_seq_length 512 --doc_stride 128 --output_dir ../output/nq_3

# predict script
 python3 run_natural_qa.py --bert_model bert-base-uncased --do_predict --do_lower_case  --predict_file ../data/natural_questions/v1.0/sample/nq-dev-sample.jsonl --max_seq_length 512 --doc_stride 128 --output_dir ../output/nq_3
 python3 nq_eval.py --gold_path=/home/peisheng/pytorch-pretrained-BERT/data/natural_questions/v1.0/sample/nq-dev-sample.jsonl --predictions_path=/home/peisheng/pytorch-pretrained-BERT/output/nq_3/predictions.json