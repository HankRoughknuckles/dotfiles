#!/bin/bash
############################
 # install.sh
 #
 # This script creates symlinks from the home directory to any desired
 # dotfiles in ~/dotfiles
 ############################


 #########################   Variables   #########################
 dir=$(pwd)                 # dotfiles directory
 olddir=~/dotfiles_old      # old dotfiles backup directory

 # list of files/folders to symlink in homedir
 files="bashrc bash_aliases gitconfig gitignore_global inputrc"       
 vim_dir="vim"
 vim_color_dir=$vim_dir/colors
 vimrc_name="vimrc"
 #################################################################


 # create dotfiles_old in homedir
 echo -n "Creating $olddir for backup of any existing dotfiles in ~..."
 mkdir -p $olddir
 echo "done"

 cd $dir

 # move any existing dotfiles in homedir to dotfiles_old directory, then
 # create symlinks 
 echo "Moving any existing dotfiles from ~ to $olddir..."
 for file in $files; do
     echo "Creating symlink in the home directory to $file"
     mv ~/.$file ~/dotfiles_old/
     ln -s $dir/$file ~/.$file
 done

 # set up vim stuff
 echo "Creating symlink in the home directory to $vim_dir/$vimrc_name"
 mv ~/.$vimrc_name ~/dotfiles_old/
 ln -s $dir/$vim_dir/$vimrc_name ~/.$vimrc_name

 #set up colors
 echo -n "Installing solarized color scheme for vim..."
 cp $vim_color_dir/solarized.vim ~/.vim/colors/solarized.vim
 echo "done"
