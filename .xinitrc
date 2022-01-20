# gnome keyring
eval $(gnome-keyring-daemon --start) &
export SSH_AUTH_SOCK

# launch notification daemon
exec twmnd &

# run picom
exec picom --experimental-backends &

# set wallpaper
# nitrogen --set-scaled ~/Pictures/Wallpapers/lock-wallpaper-edit.png --save
exec nitrogen --restore &

# launch slstatus
exec slstatus &

# launch systray
exec pasystray &

# execute dwm
exec dwm
