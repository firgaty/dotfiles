#!/bin/sh


## nvidia optimus
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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

setxkbmap -model asus_laptop gb extd 

#exec i3 > ~/.i3.log 2>&1 

feh --bg-fill Images/BG/HD-Flat-Design-Photos.jpg   

# Synaptics options :
synclient "TapButton1"="1"
syndaemon -i 2 -t -K -R &

session=${1:-kde}

case $session in
 	i3		)
			[ -f ~/.xprofile ] && source ~/.xprofile 
			exec i3
			;;

 	kde|plasma	) exec startkde;;
	xfce		) exec startxfce4;;
 	*		) exec $1;;
esac

