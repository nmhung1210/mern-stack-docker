#!/bin/sh

apt-get purge -y --auto-remove \
    build-essential \
    apt-utils

rm -rf /var/lib/apt/lists/* 
rm -rf /etc/apt/sources.list.d/nginx.list