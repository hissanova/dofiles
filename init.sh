#!/bin/bash -eux

script_dir=$(dirname $0)
cd $script_dir

for dotfile in .??*; do
    [ "$dotfile" = ".git" ] && continue
    [ "$dotfile" = ".gitmodules" ] && continue

    ln -snfv ~/dotfiles/"$dotfile" ~/
done    
