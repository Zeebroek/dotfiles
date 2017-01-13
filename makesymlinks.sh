#!/bin/bash
##########################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfile in ~/dotfiles
##########################

#### Variables

dir=~/dotfiles		# dotfiles directory
olddir=~/dotfiles_old	# old dotfiles backup directory
files="Xresources"	# list of files/folders to symlink to homedir

####

# Create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Move any existing dotfile in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving any existing dotfile from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory"
	ln -s $dir/$file ~/.$file
done
