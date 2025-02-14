#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Invalid number of arguments. Use 0 to stop or 1 to start MySQL server."
    exit 1
fi
if [ $1 -eq 0 ]; then
    # Stop MySQL Server
    sudo service mysql stop
elif [ $1 -eq 1 ]; then
    # Start MySQL Server
    sudo service mysql start
else
    echo "Invalid argument. Use 0 to stop or 1 to start MySQL server."
    exit 1
fi

# List services and grep for MySQL server
sudo service --status-all | grep mysql