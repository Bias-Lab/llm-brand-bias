#!/bin/bash

# Llama3
ollama run llama3
/bye
export MODEL=llama3
nohup python3 main.py --mode=local &
echo "Running llama3 done"

# Get the PID of the process we just started
pid=$!

# Wait for the python script to finish
wait $pid

# Commit the changes and push to github
git add .
git commit -m "add llama3 data"
git push origin ssh
