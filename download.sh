dataroot=/workspace/VITON-HD

gdown 1rvow8jStPt8t2prDcSRlnf8yzXhrYeGo -O models/vgg/
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M  https://dl.dropboxusercontent.com/s/10bfat0kg4si1bu/zalando-hd-resized.zip -d /workspace/

unzip /workspace/zalando-hd-resized.zip -d ${dataroot}

gdown 1wHHRes4tCA3Xf7FMewTnFa1rnMtnbC96 -O ${dataroot}/cloth-warp-mask-test.tar.gz
tar -zvxf  ${dataroot}/cloth-warp-mask-test.tar.gz  -C ${dataroot}/test --no-same-owner

gdown 1eoUUnu3HjX8ntiN9Hr1Be43IH-ZTsJb- -O ${dataroot}/cloth-warp-mask-train.tar.gz
tar -zvxf  ${dataroot}/cloth-warp-mask-train.tar.gz -C ${dataroot}/train --no-same-owner

gdown 1Z1zDCqMijc8CbnEbAM52e_UQKWynlN4V -O ${dataroot}/cloth-warp-test.tar.gz
tar -zvxf ${dataroot}/cloth-warp-test.tar.gz  -C ${dataroot}/test --no-same-owner

gdown 1I6drHpQwHQuedP9XLf5KFWqT3HCw9ZRh -O ${dataroot}/cloth-warp-train.tar.gz
tar -zvxf ${dataroot}/cloth-warp-train.tar.gz  -C ${dataroot}/train --no-same-owner

gdown 146fmnJZRp4BYApnjD-vSWP_PmX1rp6Kh -O ${dataroot}/unpaired-cloth-warp-mask.tar.gz
tar -zvxf ${dataroot}/unpaired-cloth-warp-mask.tar.gz  -C ${dataroot}/test --no-same-owner

gdown 1TeozekPqUVqyTHZLGtZeaFuDrp55vJHu -O ${dataroot}/unpaired-cloth-warp.tar.gz
tar -zvxf ${dataroot}/unpaired-cloth-warp.tar.gz  -C ${dataroot}/test --no-same-owner

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt -d /workspace/DCI-VTON-Virtual-Try-On/models/checkpoints -o v1-5-pruned-emaonly.ckpt
