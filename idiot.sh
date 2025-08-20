#!/bin/bash

# user defined variables
hero="rancho"
villian="virus"

echo "3 idiot ka hero hai $hero"

echo "3 idiot ka villian hai $villian"

#shell / environment variables / pre-defined variables


echo "current logged in user is $USER"


# taking input from user now

read -p "APNA NAAM BTA RE BIDU? " name

echo "SALLE $name, Tu hai kon"

# arguments


echo "movie name is $0"
echo "actor name is $1"
echo "actor2 name is $2"
echo "actor3 name is $3"

echo "total number of idiots are $#"
echo "all idiots are $@"
