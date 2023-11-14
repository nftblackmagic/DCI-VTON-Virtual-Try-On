#!/bin/bash
apt update
apt --assume-yes install -y aria2
apt-get --assume-yes install python3-pip
apt --assume-yes install vim
apt-get --assume-yes install tmux

pip install gdown
pip install --upgrade gdown
apt-get --assume-yes install unzip
apt-get --assume-yes install libsm6 libxrender1 libfontconfig1

