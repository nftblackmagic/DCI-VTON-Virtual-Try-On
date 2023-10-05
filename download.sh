gdown 1rvow8jStPt8t2prDcSRlnf8yzXhrYeGo -O models/vgg/
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M  https://dl.dropboxusercontent.com/s/10bfat0kg4si1bu/zalando-hd-resized.zip -d /workspace/

unzip /workspace/zalando-hd-resized.zip -d /workspace/VITON

gdown 1wHHRes4tCA3Xf7FMewTnFa1rnMtnbC96 -O /workspace/VITON/cloth-warp-mask-test.tar.gz
tar -zvxf  /workspace/VITON/cloth-warp-mask-test.tar.gz  -C /workspace/VITON/test --no-same-owner

gdown 1eoUUnu3HjX8ntiN9Hr1Be43IH-ZTsJb- -O /workspace/VITON/cloth-warp-mask-train.tar.gz
tar -zvxf  /workspace/VITON/cloth-warp-mask-train.tar.gz -C /workspace/VITON/train --no-same-owner

gdown 1Z1zDCqMijc8CbnEbAM52e_UQKWynlN4V -O /workspace/VITON/cloth-warp-test.tar.gz
tar -zvxf /workspace/VITON/cloth-warp-test.tar.gz  -C /workspace/VITON/test --no-same-owner

gdown 1I6drHpQwHQuedP9XLf5KFWqT3HCw9ZRh -O /workspace/VITON/cloth-warp-train.tar.gz
tar -zvxf /workspace/VITON/cloth-warp-train.tar.gz  -C /workspace/VITON/train --no-same-owner

gdown 146fmnJZRp4BYApnjD-vSWP_PmX1rp6Kh -O /workspace/VITON/unpaired-cloth-warp-mask.tar.gz
tar -zvxf /workspace/VITON/unpaired-cloth-warp-mask.tar.gz  -C /workspace/VITON/test --no-same-owner

gdown 1TeozekPqUVqyTHZLGtZeaFuDrp55vJHu -O /workspace/VITON/unpaired-cloth-warp.tar.gz
tar -zvxf /workspace/VITON/unpaired-cloth-warp.tar.gz  -C /workspace/VITON/test --no-same-owner

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt -d /workspace/DCI-VTON-Virtual-Try-On/models/checkpoints -o v1-5-pruned-emaonly.ckpt
