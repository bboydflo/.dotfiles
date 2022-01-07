#!/usr/bin/env bash

/usr/local/bin/brew update

/usr/local/bin/brew upgrade

# Update dotfiles
# cd ~/.dotfiles && git pull && cd
cd ~/ && dotfiles pull

# Update tmux-powerline
cd ~/.config/tmux/tmux-powerline && git pull && cd
