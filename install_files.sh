#!/bin/sh

# set zsh as default shell
chsh -s $(command -v zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install rest of the config files
cp -r .config/alacritty $HOME/.config/
cp -r {.emacs.d,.vim,Pictures,.local} $HOME/
cp -r {.vimrc,.zshrc,.zprofile} $HOME/
