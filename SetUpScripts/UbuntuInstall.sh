#!/bin/bash

sudo apt update

# Install net-tools
sudo apt install -y net-tools

# Install php
sudo apt install -y php

# Install SQL Server
sudo apt install -y mysql-server

# Install MySQLi
sudo apt install -y php-mysql

sudo mysql_secure_installation

echo "Run"
echo "sudo mysql"
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'new-password';"