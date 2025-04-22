# XINITRC
xset s off
xset -dpms
xset s noblank
pulseaudio --start &
xrdb .Xresources &
slstatus &
eval "$(dbus-launch --sh-syntax)"
feh --bg-scale <path-here>
exec dwm
