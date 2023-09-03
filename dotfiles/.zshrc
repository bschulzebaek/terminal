export ZSH="$HOME/.oh-my-zsh"
export BROWSER="explorer.exe"
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/home/baek/tools/sw-cli-tools/bin/sw"

# Note: This has to match the ACTIVE network adapter IPv4 address!
export DISPLAY=192.168.178.45:0.0
export NIXPKGS_ALLOW_UNFREE=1

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [ -e /home/baek/.nix-profile/etc/profile.d/nix.sh ]; then . /home/baek/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
