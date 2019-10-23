@echo off

color 0a
title GitPull V1.0 - Ran Crump

rem set PATH=%PATH%;C:\Program Files\Git\cmd

SET /P input=Would you like to stash first? y/n:

IF "%input%"=="y" GOTO :stash 
IF "%input%"=="Y" GOTO :stash

GOTO :pull

:stash
git add .
git stash


:pull
git pull
git status
pause