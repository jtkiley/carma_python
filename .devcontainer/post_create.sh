#!/usr/bin/env zsh

sudo apt-get update
sudo apt install -y libgdal-dev gdal-bin
pip install --upgrade pip
pip install --user -r requirements.txt
git config --local include.path ../.gitconfig
pre-commit install
