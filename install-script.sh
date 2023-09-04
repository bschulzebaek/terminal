# !/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

echo "Creating symlinks for dotfiles..."

for dotfile in $parent_path/dotfiles/.??*; do
    ln -sf $(realpath $dotfile) ~
done

echo "Creating symlinks for scripts..."

for script in $parent_path/scripts/??*; do
    ln -sf $(realpath $script) /usr/bin
done

# echo "Installing dependencies..."

# for script in $parent_path/dependencies/*.sh; do
#     echo "Running $script"
#     source $script
# done

echo
echo 'Done!'