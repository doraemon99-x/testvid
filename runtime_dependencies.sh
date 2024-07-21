#!/bin/sh

# Install python3-pip jika belum terinstall
apt-get update && apt-get install -y python3-pip

# Install dependencies dari requirements.txt
pip3 install -r requirements.txt

# Jalankan kode Python
python3 -m main
