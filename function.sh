#!/bin/bash

<<INFO
THIS SCRIPT IS FOR FUNCTIONS
INFO



function create_user {

read -p "ENTER USERNAME: " uname

sudo useradd -m $uname -s /bin/bash
sudo passwd $uname

echo "USER $uname CREATED SUCCESSFULLY"

}

for ((num=1 ; num<=3 ; num++ ))
do
	create_user
done
