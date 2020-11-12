#!/bin/bash
###
# Info
###

# This script contains all the commands executed in the slides
# I do not recommend running this inside cloned repository ;)

###
# Before we start
###

# `ll` in my bash is equivalent to `ls -aFlh`
# you can temporarily create a similar binding by running below command
# this alias will only last in this session, if you want to keep it for longer
# look-up and read more about .bashrc and .bash_aliases
alias ll='ls -alFh'

###
# Intro - demo_repo
###

# create new repository
git init demo_repo

# check the content of the directory
ll demo_repo

# check the magic hat content
ll demo_repo/.git/

# navigate to the directory and check its content
cd demo_repo && ll

# create content
touch README

# check the content
ll

# check repository status
git status

# add created files to the list of tracked files
git add README

# check the status again
git status

# look up git add manual
man git add

# make your first commit
git commit -m "initial commit"

# and check repository status
git status

# remove the file
git rm this_other_file.txt
