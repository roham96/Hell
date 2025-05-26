#!/bin/bash

# === Install MongoDB ===
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | \
  sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
  echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/7.0 multiverse" | \
    sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
    sudo apt update
    sudo apt install -y mongodb-org
    sudo systemctl enable mongod
    sudo systemctl start mongod

    # === Install Redis ===
    sudo apt install -y redis-server
    sudo systemctl enable redis
    sudo systemctl start redis

    # === Install PHP and common modules ===
    sudo apt install -y php php-cli php-fpm php-mysql php-curl php-mbstring php-xml php-zip php-bcmath

    # === Install Go (Golang) ===
    GO_VERSION="1.22.2"
    wget https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz
    echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
    source ~/.bashrc
    rm go$GO_VERSION.linux-amd64.tar.gz

    # === Confirm installations ===
    echo "Versions Installed:"
    echo -n "MongoDB: "; mongod --version | head -n 1
    echo -n "Redis: "; redis-server --version
    echo -n "PHP: "; php -v | head -n 1
    echo -n "Go: "; go version