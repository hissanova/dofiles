#!/bin/bash -eux

# Install all essential tools
apt install curl git emacs

# Move to the dotfiles directory
script_dir=$(dirname $0)
cd $script_dir

# Make symbolic links of config files beginning with dots at home directory
for dotfile in .??*; do
    [ "$dotfile" = ".git" ] && continue
    [ "$dotfile" = ".gitmodules" ] && continue

    ln -snfv ~/dotfiles/"$dotfile" ~/
done    

# Set capslock to ctrl
# cp /etc/default/keyboard /etc/default/keyboard_backup
# cat /etc/default/keyboard| sed s/XKBOPTIONS=""/XKBOPTIONS="ctrl:swapcaps"/ > /etc/default/keyboard
# /usr/bin/setxkbmap -option "ctrl:swapcaps"
