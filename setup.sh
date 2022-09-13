#! /bin/sh
#
# Set up script for a new DEEPi System
#
# Russ Shomberg, URI, 2022

# TODO: Assert RPi Platform

# TODO: Enable interfaces
# TODO: Set GPU mem to 256MB
sudo touch /boot/ssh

# Update RPi
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove

# Install supporting packages
sudo apt-get -y install nginx proftpd-basic
sudo apt-get -y install ntp
sudo apt-get -y install ffmpeg

# Install Python
sudo apt-get -y install python3-setuptools python3-dev build-essential libpq-dev
sudo apt-get -y install python3-virtualenv
sudo apt-get -y install python3-picamera

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# TODO: Downlaod DEEPi Python module

# TODO: Set up deployment service

# TODO: Set up configuration
