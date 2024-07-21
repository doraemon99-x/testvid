# Gunakan image Python sebagai base image
FROM python:3.9-slim

# Set lingkungan kerja
WORKDIR /app

# Salin file requirements.txt ke dalam container
COPY requirements.txt .

# Jalankan skrip build dependencies
COPY build_dependencies.sh .
RUN chmod +x build_dependencies.sh
RUN ./build_dependencies.sh

# Salin semua file ke dalam container
COPY . .

# Jalankan aplikasi
CMD ["python", "main.py"]
