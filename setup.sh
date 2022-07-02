#!/bin/bash

# Logs
DATE=$(date +%d-%m-%y) 
TIME=$(date | cut -b 9- | cut -d " " -f4)

# echo $DATE-$TIME

echo "Select your option"
echo "d : detach mode"
echo "n : non-detach mode"
read -p "Enter your option : " User_input

if [[ $User_input == d ]]; then
        echo ""
        echo "Running detach mode"
        echo ""
        docker-compose up --build -d | tee log/$DATE-$TIME-Detach-mode.log
elif [[ $User_input == n ]]; then
        echo ""
        echo "Running non-detach mode"
        echo ""
        docker-compose up --build | tee log/$DATE-$TIME-NoN-Detach-mode.log
else
        echo " Exit ... "
        exit
fi


