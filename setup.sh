#!/bin/bash
# setup.sh

# add ffmpeg repo
sudo add-apt-repository ppa:mc3man/trusty-media

# update and upgrade packages
sudo apt-get update
sudo apt-get dist-upgrade

# install ffmpeg
sudo apt-get install ffmpeg
