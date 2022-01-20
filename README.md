# dotfiles
Contains my editor and shell configuration files

## Requirements

- Install oh-my-zsh on a fresh install
- Install alacritty and make sure .config/alacritty/alacritty.yml exists
- Install alacritty-themes using npm to install themes with ease

- Install `polkit` in official mirror and `polkit-dumb-agent` in  AUR.
- Install `picom` for transparency in alacritty

## Colors

Colorscheme preferred on terminal:

- One-Dark
- Nord
- Arc-adapta

Colorscheme on Gnome/Cosmic Dekstop

- Nord

## Terminal transparency

In terminal - Uncomment or comment `background_opacity` present under 
[alacritty.yml](./.config/alacritty/alacritty.yml)

In compositor - Uncomment or comment the entire section of `opacity_rule`
present under [picom.conf](./.config/picom/picom.conf)

> You can go above or below `1` in `background_opacity` rule in terminal config.

## Fonts

- Install mononoki-nerd-font-patched from AUR (not used anymore)
- Cantrell for normal text
- JetbrainsMono for terminal
