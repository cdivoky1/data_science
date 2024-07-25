#!/usr/bin/env bash

#TO SETUP
# Install Docker
# Make sure you have python3 installed
# - you can use conda or the python installer for you system.  
#   Preferred approach is to using miniconda:
#   https://docs.conda.io/en/latest/miniconda.html
#
# Install repo2docker
# pip install jupyter-repo2docker
#
# Launch repo2docker
# - The following cmd will run repo2docker using a git repo 
#   that you have cloned onto your system

# repo2docker --user-id 1000 -v $PWD:/home/$USER/data .

jupyter-repo2docker --image-name datascience --no-run --user-id=$UID --user-name=$USER --Repo2Docker.platform=linux/amd64 --target-repo-dir=/home/$USER/.cache --build-arg platform="linux/amd64" .
docker run -it -v "$PWD":"/home/$USER/.cache/share" -p 8888:8888 datascience:latest jupyter lab --ip 0.0.0.0 --NotebookApp.token='' --NotebookApp.password=''