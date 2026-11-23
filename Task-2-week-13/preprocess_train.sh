#!/usr/bin/env bash
# Run train.py in the background, redirecting all output to train.log
nohup python3 src/train.py > train.log 2>&1 &
echo "train.py started in background (PID $!); output -> train.log"
