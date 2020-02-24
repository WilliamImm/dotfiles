# Curus's current xinitrc
# Load custom X resources, if present:
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# Reload preset wal background
wal -R
# Properly set the $DISPLAY env, if not already set
systemctl --user import-environment DISPLAY
# Launch picom for window compositing + anti-tearing on Skylake graphics
picom &
# Xscreensaver, as the screen locker & screensaver
xscreensaver -no-splash &
# Dex, for autostart entries
dex -a -e i3 &
# Finally, launch i3 or bspwm for the actual window management
i3
# bspwm
