#!/bin/bash

echo "Creating symlinks for dotfiles..."

for dotfile in ./dotfiles/.??*; do
    ln -sf $(realpath $dotfile) ~
done

echo "Creating symlinks for scripts..."

for dotfile in ./scripts/??*; do
    sudo ln -sf $(realpath $dotfile) /usr/bin
done

