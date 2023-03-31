docker run --rm --gpus '"device=0,1"' --name visgpt \
	-w /workspace -v $PWD:/workspace --shm-size=32G --network=host \
	-it pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime \
	/bin/bash -c "source /workspace/preprocess.sh && bash"
