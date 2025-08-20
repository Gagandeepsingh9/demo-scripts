#!/bin/bash


<<msg

this script is used to create user
to manage users  
this is also a type of comment
msg

echo "=============CREATION OF USER============"

read -p "ENTER USER NAME YOU WANT TO CREATE ? - " uname

read -p "ENTER THE PASSWORD? - " password

sudo useradd -m "$uname" -s /bin/bash

echo -e "$password\n$password" | sudo passwd "$uname"


echo "YOUR USER $uname is CREATED"

echo "======CREATION OF USER COMPLETED=========="
