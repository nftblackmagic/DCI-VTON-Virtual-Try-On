python test.py --plms --gpu_id 0 \
--ddim_steps 100 \
--outdir results/viton \
--config configs/viton512.yaml \
--dataroot /workspace/VITON-HD \
--ckpt /workspace/DCI-VTON-Virtual-Try-On/models/Paint-by-Example/2023-10-05T22-08-11_viton512/checkpoints/epoch=000009.ckpt \
--n_samples 8 \
--seed 23 \
--scale 1 \
--H 512 \
--W 512 \
--unpaired