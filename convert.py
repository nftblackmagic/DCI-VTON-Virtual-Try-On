import torch
# from config import checkpoints_dir
from pathlib import Path

checkpoints_dir=Path("/workspace/DCI-VTON-Virtual-Try-On/models/checkpoints")

weights_file = 'v1-5-pruned-emaonly.ckpt'
pretrained_model_path=checkpoints_dir.joinpath(weights_file)
ckpt_file=torch.load(pretrained_model_path,map_location='cpu')
zero_data=torch.zeros(320,5,3,3)
new_weight=torch.cat((ckpt_file['state_dict']['model.diffusion_model.input_blocks.0.0.weight'],zero_data),dim=1)
ckpt_file['state_dict']['model.diffusion_model.input_blocks.0.0.weight']=new_weight
torch.save(ckpt_file, checkpoints_dir.joinpath(f"{weights_file.split('.')[0]}-modified-9channels.ckpt"))
