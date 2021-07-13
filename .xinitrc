#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
export PATH=$HOME/.local/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_STYLE_OVERRIDE=kvantum


# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keyboard Layout
setxkbmap latam & 

#Statusbar
/home/italo/dwm-bar/dwm_bar.sh &

# compositor & nitrogen
nitrogen --restore &
picom -f &

#Loop
while true; do
	dwm >/dev/null 2>&1
done

#Start dwm
exec dwm

