#!/bin/sh

apt-get autoremove --purge -y


rm -rf /var/lib/apt/lists/* 
rm -rf /etc/apt/sources.list.d/nginx.list