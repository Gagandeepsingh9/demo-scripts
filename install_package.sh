#!/bin/bash


<<comments
This Script will install packages that 
you pass in the arguments.
comments

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "$1 Installation completed"

