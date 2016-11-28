#!/bin/bash

# first lets check if git is installed, if it is not let's go ahead and install it
str=$(git --version)
str2="git version"
if [[ "${str}" != *"git version"*  ]] ; then
    echo "git is not installed"
    echo "downloading git with sudo apt-get install git"
    sudo apt-get update
    sudo apt-get install git
    echo 
    echo "finished installing git"
fi
# git is installed
echo "good!, git is installed"
cd ~
echo "creating folders"
#mkdir .vim
#mkdir .vim/plugin
#mkdir .vim_runtime

echo "downloading repo from github"
#git clone https://github.com/amix/vimrc.git

echo "running installation script"
#sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "downloading and installing paren complete"
#git clone git://github.com/jiangmiao/auto-pairs.git
#cp plugin/auto-pairs.vim ~/.vim/plugin
#apt-get install git

echo "installation complete"
echo "enjoy a simple but awesome vim installation by Darci K (mind wide open)"
echo "adios"
