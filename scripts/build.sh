#!/bin/sh


apt update
apt install -y curl \
    ca-certificates \
    gnupg2 \
    apt-utils \
    build-essential \
    pkg-config \
    libcairo2-dev \
    libjpeg-dev
    

curl -sL https://deb.nodesource.com/setup_10.x | bash -

apt update
apt install -y nodejs mongodb nginx
npm config set user 0
npm config set unsafe-perm true
npm i -g npm eslint express mongodb react redux react-redux fabric