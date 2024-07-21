#!/bin/bash

# Memperbarui daftar package
sudo apt-get update

# Menginstall pip jika belum terinstall
sudo apt-get install -y python3-pip

# Menginstall virtualenv jika belum terinstall
pip3 install virtualenv

# Membuat virtual environment baru
python3 -m venv venv

# Mengaktifkan virtual environment
source venv/bin/activate

# Menginstall dependencies dari requirements.txt
pip install -r requirements.txt

echo "Setup selesai. Virtual environment telah diaktifkan."
echo "Untuk mengaktifkan kembali virtual environment, gunakan: source venv/bin/activate"
