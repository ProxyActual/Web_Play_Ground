#!/bin/bash

echo "Starting the SQL Server..."

/mnt/c/Users/curti/Documents/CodingStandards/Web_Play_Ground/SetMySqlState.sh 1

echo "Starting PHP built-in web server..."

php -S localhost:8000 -t /mnt/c/Users/curti/Documents/CodingStandards/Web_Play_Ground