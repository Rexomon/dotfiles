#!/bin/bash

choices=$(echo -e "  Power Off\n  Reboot\n  Suspend\n  Lock Screen\n  Logout" | wofi --show dmenu -p "Power Menu")

case $choices in
    *"Power Off")
        systemctl poweroff
        ;;
    *"Reboot")
        systemctl reboot
        ;;
    *"Suspend")
        systemctl suspend
        ;;
    *"Lock Screen")
        dbus-send --type=method_call --dest=org.gnome.ScreenSaver /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock
        ;;
    *"Logout")
        gnome-session-quit --logout
        ;;
esac
