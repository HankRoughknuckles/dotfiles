#!/bin/bash
 ###########################
 # install.sh
 #
 # This script creates symlinks from the home directory to any desired
 # dotfiles in ~/dotfiles
 ############################


 #########################   Variables   #########################
 dir=$(pwd)                 # dotfiles directory
 olddir=~/dotfiles_old      # old dotfiles backup directory

 # list of files/folders to symlink in homedir
 files="bashrc gitconfig gitignore_global inputrc curlrc bash_profile rspec tmux.conf zshrc aliases agignore ctrlpignore ideavimrc"
 vim_backup_files_dir="~/vimtmp"
 vim_dir="vim"
 vim_color_dir=$vim_dir/colors
 vimrc_name="vimrc"
 snippet_dir_name="UltiSnips"
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
     mv ~/.$file $olddir
     ln -s $dir/$file ~/.$file
 done

 # set up vim stuff
 echo "Creating vimrc symlink in the home directory to $vim_dir/$vimrc_name"
 mv ~/.$vimrc_name $olddir
 ln -s $dir/$vim_dir/$vimrc_name ~/.$vimrc_name
 mkdir ~/vimtmp

 # set up vim snippets
   # for some reason, the snippets folder in the user's .vim directory
   # must be named "after"
 echo "Creating snippets symlink in .vim directory to $vim_dir/$snippet_dir_name"
 mv ~/.$vim_dir/after $olddir
 ln -s $dir/$vim_dir/$snippet_dir_name ~/.vim/UltiSnips

 #set up colors
 echo -n "Installing solarized color scheme for vim..."
 cp $vim_color_dir/solarized.vim ~/.vim/colors/solarized.vim
 echo "done"

 # install tmux settings
 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

 # create the vimtmp dir for saving temporary files
 mkdir $vim_backup_files_dir
