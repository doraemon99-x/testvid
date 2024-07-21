#!/bin/sh

# Update package list dan install python3-pip jika belum terinstall
apt-get update && apt-get install -y python3-pip

# Install dependencies dari requirements.txt
pip3 install -r requirements.txt
