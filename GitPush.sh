#!/bin/bash

#Functions
function PushComment {
	echo PushComment.
	git add .
	git commit -m "$Input"
	git pull
	git push
	Quit
}

function PushEmpty {
	echo PushEmpty.
	git add .
	git commit -a --allow-empty-message -m ''
	git pull
	git push
	Quit	
}

function Quit {
	exit
}

#Set the color to green
tput setaf 2;

#Change the terminal name
echo -en "\033]0;GitPull v0.01 Ran Crump\a"

echo "Insert a commit message or leave blank:"
read Input

if [ "$Input" != "" ]; then
  PushComment
else
  PushEmpty
fi
