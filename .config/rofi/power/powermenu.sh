#!/bin/bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

# Available Styles
# >> Styles Below Only Works With "rofi-git(AUR)", Current Version: 1.5.4-76-gca067234
# full     full_circle     full_rounded     full_alt
# card     card_circle     column     column_circle
# row     row_alt     row_circle
# single     single_circle     single_full     single_full_circle     single_rounded     single_text

style="single_full_circle"

rofi_command="rofi -theme power/$style.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
windows=""
lock=""
suspend=""
logout=""
dir="$HOME/.config/rofi/power"

# Variable passed to rofi
options="$shutdown\n$reboot\n$windows\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)

        systemctl reboot
		
        ;;
	$windows)
		sudo efibootmgr -n 0000 && systemctl reboot
		;;
        
    $lock)
        multilockscreen -l & (sleep 3 && xset dpms force suspend)
        ;;
    $suspend)

        systemctl suspend
		
        ;;
    $logout)

        bspc quit
		
        ;;
esac
