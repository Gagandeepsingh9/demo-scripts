#!/bin/bash


<<info
This shell script checks if user exists
info

read -p "ENTER THE USERNAME TO CHECK? - " userinput

echo "Checking $userinput ....."

a=$(cat /etc/passwd | grep -i $userinput | wc | awk '{print $1}')

if [ "$a" -eq 0 ];
then
	echo "user doesnot exist"
else
	echo "user exists"
fi

