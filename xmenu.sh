#!/bin/sh

EDITOR="emacsclient -c"
# EDITOR="st -e nvim"
xmenu <<EOF | sh &
  Launch Dmenu	dmenu_run
  Run Terminal	st
  Web Browser	librewolf

  Applications
	 Emacs (Daemon)		emacs --daemon
	 Emacs (Client)		emacsclient -c
	  Fontmatrix (Font manager)	fontmatrix
	  Thunar (File Manager)	thunar
	  Nitrogen (Wallpaper Setter)	nitrogen 
  Browsers
	  Firefox		firefox
	  Librewolf	librewolf
	  Qutebrowser	qutebrowser
  Terminals
	  ST			st
	  Xterm		xterm
  Multimedia
	墳  Sound Control	pavucontrol
	  MusikCube		st -e musikcube
  Graphics
	  Gpick (Color Picker)	gpick
	  GIMP (Image Editor)	gimp
  Edit Configs
	  Edit DWM config	$EDITOR ~/.config/dwm/config.h
	  Edit Slstatus config	$EDITOR ~/.config/slstatus/config.h
	  Edit ST config	$EDITOR ~/.config/st-siduck/config.h

  Log Out		killall dwm
ﰇ  Reboot			reboot
襤  Shutdown		poweroff
EOF

