python -u main.py \
--logdir models/Paint-by-Example \
--base configs/viton512.yaml \
--pretrained_model models/checkpoints/v1-5-pruned-emaonly-modified-9channels.ckpt \
--scale_lr False
