# dotfiles
Contains my editor and shell configuration files

## Packages needed

- Install oh-my-zsh on a fresh install
- Install alacritty and make sure .config/alacritty/alacritty.yml exists
- Install alacritty-themes using npm to install themes with ease

> Do the following when not on a Desktop Environment
- Install `polkit` 
- Install `picom` for transparency in alacritty

## Colors

Colorschemes I like

- One-Dark
- Nord
- Arc-adapta

Colorscheme on Gnome/Cosmic Dekstop

- Nord
- Arc
- One-Dark

## Terminal transparency

In terminal - Uncomment or comment `opacity` present under 
[alacritty.yml](./.config/alacritty/alacritty.yml)


> Only if on a non-Desktop Environment Install
In compositor - Uncomment or comment the entire section of `opacity_rule`
present under [picom.conf](./.config/picom/picom.conf)

## Fonts

- Install mononoki-nerd-font-patched from AUR (don't use anymore)
- Cantrell for normal text
- Cascadia Code PL for monospace text
- nerd-fonts-fira-code for icons with exa maybe

## Gnome Shell Extensions

These are the extensions I prefer while using Gnome desktop.

Though all of these are not necessarily enabled at all times.

- Blur my shell
- Clipboard History
- Alphabetical App Grid
- AppIndicator and KStatusNotifierItem Support
- Dash to Dock
- Freon
- gtile
- OpenWeather
