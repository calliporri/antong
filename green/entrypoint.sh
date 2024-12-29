#!/bin/bash
# Memastikan script dijalankan dengan hak akses yang tepat

# Install net-tools jika belum terinstall
if ! dpkg -s net-tools > /dev/null 2>&1; then
    echo "Menginstal net-tools..."
    sudo apt-get update && sudo apt-get install -y net-tools
else
    echo "net-tools sudah terinstal."
fi

# Menjalankan manager.sh dengan parameter yang sesuai
echo "Menjalankan manager.sh up"
sudo bash manager.sh up

echo "Menjalankan manager.sh key"
sudo bash manager.sh key

# Menjaga container tetap hidup
tail -f /dev/null
