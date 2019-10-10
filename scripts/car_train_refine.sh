 #!/bin/bash
set -x
set -e

#export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

OUTDIR='output/car_train_refine'
python train/train_net_det.py --cfg cfgs/refine_car.yaml OUTPUT_DIR $OUTDIR
python train/test_net_det.py --cfg cfgs/refine_car.yaml OUTPUT_DIR $OUTDIR TEST.WEIGHTS $OUTDIR/model_0050.pth
