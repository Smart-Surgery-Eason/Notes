sudo apt update
sudo apt install gh
mkdir ~/repo
cd ~/repo
gh auth login

gh clone Project-MONAI/monai-deploy-app-sdk
# use pytorch to automatically install requirements and setup conda environment
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# add conda interpreter
# in pycharm select the conda evnironment

conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y

# remove docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo usermod -aG docker $USER

# make sure we are in the conda environment

pip install fsspec
pip install monai-deploy-app-sdk
pip install scikit-image
pip install setuptools
pip install Pillow
pip install matplotlib

sudo /home/coder/miniconda3/envs/monai-deploy-app-sdk/bin/monai-deploy package examples/apps/simple_imaging_app -c examples/apps/simple_imaging_app/app.yaml -t simple_app:latest --platform x64-workstation -l DEBUG

sudo docker images | grep simple_app
sudo docker run --rm simple_app-x64-workstation-dgpu-linux-amd64:latest show
rm -rf output
sudo /home/coder/miniconda3/envs/monai-deploy-app-sdk/bin/monai-deploy run simple_app-x64-workstation-dgpu-linux-amd64:latest -i home/coder/repo/monai-deploy-app-sdk/examples/apps/simple_imaging_app/input -o output