# Menggunakan Ubuntu 22.04 sebagai base image
FROM ubuntu:22.04

# Menentukan maintainer
LABEL maintainer="youremail@example.com"

# Update dan install dependensi dasar tanpa net-tools
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Download dan ekstrak file
RUN wget https://network3.io/ubuntu-node-v2.1.1.tar.gz && \
    tar -xf ubuntu-node-v2.1.1.tar.gz && \
    rm ubuntu-node-v2.1.1.tar.gz

# Set working directory
WORKDIR /ubuntu-node

# Menambahkan entrypoint script ke dalam container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Tentukan entrypoint untuk container
ENTRYPOINT ["/entrypoint.sh"]
