#!/bin/bash
# Darci K Saucedo
# 
# script to download multiple repos so we can install an awesome vim configuration
#
#

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
echo
cd ~
echo "creating folders .vim, .vim/plugin, .vim_runtime"
mkdir .vim
mkdir .vim/plugin
mkdir .vim_runtime

echo "downloading repo from github"
echo 
git clone https://github.com/amix/vimrc.git
cp -r vimrc/* .vim_runtime

echo
echo "running installation script"
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo
echo

echo "downloading and installing paren complete"
git clone git://github.com/jiangmiao/auto-pairs.git
cp -r auto-pairs/plugin/auto-pairs.vim ~/.vim/plugin
echo
echo "installation complete"
echo 
echo "enjoy a simple but awesome vim installation by Darci K (mind wide open)"
echo "adios"
echo 
echo 
echo "please restart your terminal"
echo
