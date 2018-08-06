#!/bin/bash
# Darci K Saucedo
#
# script to download multiple repos and install a producitve VIM enviroment
#
filename=$0
params=$1

if [[ "$params" != "debian" && "$params" != "fedora" ]]
then
    echo "$params is not an option:"
    echo
    echo "<usage: $filename [ fedora | debian ]>"
    echo
    exit 1
fi


# check if git is installed, if it is not let's go ahead and install it
str=$(git --version)
str2="git version"
if [[ "${str}" != *"git version"*  ]]
then
    echo "git is not installed"
    echo "Installing git"
    sudo apt-get update
    sudo apt-get install git
    echo
    echo "finished installing git"
fi
# git is installed
echo "good!, git is installed"
echo

echo "updating VIM"
if [[ $params == "debian" ]]
then
    sudo add-apt-repository ppa:jonathonf/vim
    sudo apt update
    sudo apt-get -y install vim
else
    echo "is fedora based"
    curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo
	yum update vim
fi

# begin installation of pluggins
cd ~
echo "creating folders .vim, .vim/plugin, .vim_runtime"
mkdir .vim
mkdir .vim/plugin
mkdir .vim_runtime


echo "downloadking repos from github"
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
echo "Done installing pluggins"
echo "Customizing vimrc file"

# modify .vimrc file
options=(
    "set t_Co=256"
    "set background=light"
    "set number"
    "set mouse=a"
    "set tags=tags"
    ":imap jk <Esc>"
    )
for i in "${options[@]}"
do
    echo "$i" >> ~/.vimrc
done

echo "installation complete"
echo
echo "enjoy a simple but awesome vim installation by Darci K"
echo "adios"
echo
echo
echo "please restart your terminal"
echo
