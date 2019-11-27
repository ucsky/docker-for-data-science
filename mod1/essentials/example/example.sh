##Docker Install

#Source: https://docs.docker.com/install/linux/docker-ce/ubuntu/

#Step 1: Installing Docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl status docker

#Step2: Add your user to the docker group
sudo groupadd docker
sudo usermod -aG docker $USER
#Required logoff and login to take effect
docker run hello-world

#For windows install : https://docs.docker.com/docker-for-windows/install/

#Running Juypter Notebook
docker run -p 8888:8888 jupyter/scipy-notebook:17aba6048f44

#Get version of Python Packages

import scipy
print (scipy.__version__)

import pandas
print (pandas.__version__)