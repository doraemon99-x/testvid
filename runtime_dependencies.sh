#!/bin/bash

# Memastikan pip sudah terinstall
if ! command -v pip3 &> /dev/null
then
    echo "pip3 tidak ditemukan, menginstall pip3..."
    sudo apt-get update
    sudo apt-get install -y python3-pip
fi

# Menginstall virtualenv jika belum terinstall
if ! pip3 show virtualenv &> /dev/null
then
    echo "virtualenv tidak ditemukan, menginstall virtualenv..."
    pip3 install virtualenv
fi

# Membuat virtual environment baru jika belum ada
if [ ! -d "venv" ]; then
    echo "Membuat virtual environment..."
    python3 -m venv venv
fi

# Mengaktifkan virtual environment
source venv/bin/activate

# Menginstall dependencies dari requirements.txt
echo "Menginstall dependencies dari requirements.txt..."
pip install -r requirements.txt

# Menjalankan kode Python
echo "Menjalankan kode Python..."
python3 -m main

echo "Eksekusi selesai."
