#!/bin/bash

Log_File="/tmp/file.log"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

check_commands(){
	if ! command -v "$1" &> /dev/null;
	then
		echo "Please intall $1 command"
		exit 1
	fi
}

if [ $# -eq 0 ]
then
	echo "No arguments provided."
	exit 1	
fi

filename=$(basename "$1")

if [[ "$filename" != *.git ]]
then
	exit 1
fi

name=$(basename "$1" .git)
branch="main"
if [ -z "$2" ]
then
	branch="main"
else
	branch="$2"
fi
check_commands "git"
#check_commands "npm"

#cloning now 

if [ -d "$name" ]
then
	echo "Repo already exists!"
	exit 1
fi

if git clone -b "$branch" "$1" &> "$Log_File"; then
	echo "Cloned.."
else
	echo "Oops.. error occurred!"
	exit 1
fi

#installing node modules and other dependencies 

if ! cd "$name" 
then
	echo "error: repo not detected"
	exit 1
fi


if [ -f "package.json" ]; then
	npm install
else
	echo "No package.json"
fi

echo "1. Open repo in vs code"
echo "2. open repo in vim"

read choice
case $choice in 
	1)
		code $PWD;;
	2)
		vim $PWD;;
	*)
		echo "Invalid";;
esac




