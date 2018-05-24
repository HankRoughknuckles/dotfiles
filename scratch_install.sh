#!/bin/bash
install_dir=~/Desktop/dotfile-install-files
solarized_terminal_dir=$install_dir/solarized
vim_colors_dir=$install_dir/vim_colors

echo -n "Have you set up an ssh key with github yet? Do that first... "
read confirm

echo "Setting up requisite folders"
mkdir $install_dir

# echo "=========="
# echo "installing homebrew"
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#
# echo "=========="
# echo "installing RVM"
# \curl -sSL https://get.rvm.io | bash
#
# echo "=========="
# echo "installing newest version of vim and overwriting system vim"
# brew install vim --override-system-vi
#
# echo "=========="
# echo "installing macvim"
# brew install macvim
#
# echo "=========="
# echo "installing tmux"
# brew install tmux
#
# echo "=========="
# echo "install ag (aka: the silver searcher)"
# brew install the_silver_searcher
#
# echo "=========="
# echo "installing reattach-to-user-namespace to allow for pasting in tmux"
# brew install reattach-to-user-namespace
#
# echo "=========="
# echo "installing solarized terminal colors"
# git clone git@github.com:tomislav/osx-terminal.app-colors-solarized.git $solarized_terminal_dir
# open $solarized_terminal_dir/Solarized\ Dark.terminal
# open $solarized_terminal_dir/Solarized\ Light.terminal


echo "=========="
echo "installing colors for vim"
git clone git@github.com:altercation/vim-colors-solarized.git $vim_colors_dir
cp $vim_colors_dir/colors ~/.vim/
# # setup ssh keys, keychain
# # oh my zsh
# # vim solarized
#
# echo "=========="
# echo "installing dotfiles information"
# ./install.sh
#


echo "cleaning up the temp install folders..."
rm -rf $install_dir
echo "...done!"
echo "Don't forget to install Karabiner to remap your ctrl and cmd keys!"
