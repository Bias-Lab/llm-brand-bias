#!/bin/bash

# Run the python script in the background
nohup python3 main.py --mode=local &

# Commit the changes and push to github
git add .
git commit -m "add llama3 data"
git push origin ssh
