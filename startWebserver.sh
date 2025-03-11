#!/bin/bash

echo "Starting the SQL Server..."

/mnt/c/Users/curti/Documents/CodingStandards/Web_Play_Ground/SetMySqlState.sh 1

echo "Starting PHP built-in web server..."
if [[ "$(pwd)" == */Web_Play_Ground ]]; then
    WEB_ROOT=$(pwd)
else
    WEB_ROOT="/mnt/c/Users/curti/Documents/CodingStandards/Web_Play_Ground"
fi
php -S localhost:8000 -t $WEB_ROOT