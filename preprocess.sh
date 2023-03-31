#!/bin/bash
apt update
apt install -y ffmpeg libsm6 libxext6 libfontconfig1 libxrender1
rm -rf /var/lib/apt/lists/*
conda create -n visgpt python=3.8
source /opt/conda/etc/profile.d/conda.sh
conda activate visgpt
pip install -r requirements.txt
