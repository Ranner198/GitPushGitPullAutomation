#!/bin/bash

#Functions
function GitStash {
	git add .
	git stash
	git pull
	Quit
}

function GitPull {
	git add .
	git commit -m "GitPull Automation"
	git pull
	Quit	
}

function Quit {
	exit
}

#Set the color to green
tput setaf 2;

#Change the terminal name
echo -en "\033]0;GitPull v0.01 Ran Crump\a"

echo "Git Stash?"
read -n 1 Stash

echo "$Stash"

if ("$Stash" == "y"); then
  GitStash
else
  GitPull
fi
