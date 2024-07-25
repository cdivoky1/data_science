# conda_binder
Basic Conda based local environment for Jupyter notebooks.

## Usage    

### Install miniconda

Download and install Miniconda for your OS from [here](https://conda.io/miniconda.html)

### Install Docker

Download and install Docker for your OS from [here](https://docs.docker.com/get-started/)

### Create a conda environemnt for repo2docker

Create a new environment with the following commands:

Setup channels to include bioconda and conda-forge:

```
conda config --add channels default
conda config --add channels bioconda
conda config --add channels conda-forge
```

Create a new environment with the following commands:

```
conda create -n r2d_env 
```
Activate the environment with the following command:

```
source activate r2d_env
```

Install repo2docker in the environment with the following commands:

```
conda install jupyter-repo2docker
```
### Clone your git repo to a local directory and cd into

```
git clone https://github.com/username/reponame

cd /path/to/your/repo
```

### Build the image

```
jupyter-repo2docker --image-name datascience --no-run --user-id=$UID --user-name=$USER --Repo2Docker.platform=linux/amd64 --target-repo-dir=/home/$USER/.cache --build-arg platform="linux/amd64" .
```

### Run the image

```
docker run -it -p 8888:8888 datascience:latest jupyter lab --ip 0.0.0.0 --NotebookApp.token='' --NotebookApp.password=''
```