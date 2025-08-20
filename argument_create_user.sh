#!/bin/bash


function create_user {

echo "===========USER CREATION USING ARGUMENTS=========="

sudo useradd -m $1 -s /bin/bash

echo -e "$2\n$2" | sudo passwd $1

echo "YOU HAVE SUCCESSFULLY CREATED THE USER: $1"

}

function delete_user {
echo -e "=======USER CREATION USING ARGUMENTS COMPLETED=====\n"

echo "=======USER DELETION PROCESS STARTED======"

sudo userdel -r $1

echo -e "=======USER DELETION PROCESS COMPLETED======\n"
}

function delete_confirmation {
echo "=======USER DELETION CONFORMATION PROCESS STARTED======"

if [ $(cat /etc/passwd | grep -i $1 | wc | awk '{print $1}') -eq 0 ];
then
	echo " AS wc is 0, NO user exists with this name $1"
else
	echo "the user was not deleted"
fi
}


create_user $1 $2
delete_user $1
delete_confirmation $1
