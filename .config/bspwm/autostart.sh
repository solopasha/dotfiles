#! /bin/sh

run() { ! pgrep -x "$1" >/dev/null && "$@"; }
#xrdb ~/.Xresources  &
xsetroot -cursor_name left_ptr &
setxkbmap -layout us,ru -option "grp:caps_toggle,grp_led:scroll,terminate:ctrl_alt_bksp" &
# hsetroot -fill /usr/share/wall/ctld.png &
run nitrogen --restore &
#picom -b --config /home/solopasha/picom/picom.conf
picom -b --config /home/solopasha/picom/some.conf --experimental-backend &
run gxkb &
#imwheel --kill -b 45 &
run sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
urxvtd --quiet --opendisplay --fork &
if [ "$(which polybar)" != "polybar not found" ]; then
  $HOME/.config/bspwm/polybar/launch.sh &
  # (sleep 2; sh ~/.bin/phide.sh) &
fi
run tint2 -c $HOME/.config/tint2/tray.tint2rc &
run dunst &
gapplication launch org.gnome.Shell.Extensions.GSConnect &
thunar --daemon &
numlockx &
xsettingsd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
gnome-keyring-daemon --start &
#run kdeconnect-indicator &
#run jgmenu_run start &
run nm-applet &
run redshift &
run xfce4-power-manager &
# run caffeine &
#run udiskie -t &
run parcellite &
# run unclutter &
run telegram-desktop -startintray &
