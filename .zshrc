# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current Theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

HIST_STAMPS="mm/dd/yyyy"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git
        colorize
        colored-man-pages
        themes
        vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases

# youtube-dl
alias yta='youtube-dl -f "bestaudio/best" -ciw -o "~/Music/%(title)s.%(ext)s" \
    -v --extract-audio --audio-quality 0 --audio-format mp3'
alias ytap='youtube-dl -f "bestaudio/best" -ciw -o "%(title)s.%(ext)s" \
    -v --extract-audio --audio-format mp3 --audio-quality 0  --yes-playlist'

alias ytvideo='youtube-dl -f best+bestaudio -o "~/Videos/%(title)s.%(ext)s"'

# cd
alias cdpr='cd ~/Projects/'
alias cdc='cd ~/Projects/C'
alias cdct='cd ~/Projects/C/Test'
alias cdpy='cd ~/Projects/Python'
alias cdweb='cd ~/Projects/Web'
alias dwmc='cd ~/software/dwm'
alias stc='cd ~/software/st'
alias slc='cd ~/software/slstatus'

# neofetch - pfetch
alias neofetch='pfetch'

# wallpaper
alias setwall='nitrogen --save --set-scaled'

# python
alias py='python3 '

# fan control
alias fan_control='sudo vim /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy'

# font update
alias upfont='sudo fc-cache -vf ~/.fonts && sudo fc-cache -vf /usr/share/fonts/'

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Fast rate
xset r rate 300 50

# Env Var
# export LC_ALL='en_US.UTF-8'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
