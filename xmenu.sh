#!/bin/sh

#EDITOR="emacsclient -c"
playing=$(echo $(deadbeef --nowplaying "%a - %b - %n - %t "))
EDITOR="st -e nvim"
xmenu <<EOF | sh &
  Launch Dmenu	dmenu_run
  Run Terminal	st
  Web Browser	librewolf

  Applications
	 Emacs
		Run Daemon	emacs --daemon
		Launch EmacsClient	emacsclient -c
	  Lxappearance				lxappearance
	  Fontmatrix (Font manager)	fontmatrix
	  Thunar (File Manager)	thunar
	  Nitrogen (Wallpaper Setter)	nitrogen
	  VirtualBox	virtualbox
	  Persepolis (Download Manager)	persepolis
  Browsers
	  Firefox		firefox
	  Librewolf	librewolf
	  Qutebrowser	qutebrowser
  Terminals
	  ST			st
	  Xterm		xterm
  Multimedia
	墳  Sound Control (Pulseaudio)	pavucontrol
	  MusikCube (Music Player CLI)		st -e musikcube
	  DeadBeef (Music Player GUI)		deadbeef
	Now Playing
		$playing	deadbeef
		Pause	deadbeef --pause
		Play	deadbeef --play
		Next Track	deadbeef --next
  Graphics
	  Gpick (Color Picker)	gpick
	  GIMP (Image Editor)	gimp
  Games
	Xonotic (glx)	xonotic-glx
	Minecraft(Tlauncher)	st
  Edit Configs
	  Edit DWM config	$EDITOR ~/.config/dwm/config.h
	  Edit Slstatus config	$EDITOR ~/.config/slstatus/config.h
	  Edit ST config	$EDITOR ~/.config/st/config.h
	  Edit Picom Config	$EDITOR ~/.config/picom/picom.conf
	  Edit Xmenu		$EDITOR ~/.config/xmenu/xmenu.sh

  Log Out		killall dwm
ﰇ  Reboot			reboot
襤  Shutdown		poweroff
EOF
