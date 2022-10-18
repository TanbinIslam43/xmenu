#!/bin/sh

xmenu <<EOF | sh &
  Launch Dmenu	dmenu_run
  Run Terminal	st
  Web Browser	librewolf

  Applications
	 Emacs (Daemon)		emacs --daemon
	 Emacs (Client)		emacsclient -c
	  Fontmatrix (Font manager)	fontmatrix
	  Thunar (File Manager)	thunar
  Browsers
	Firefox		firefox
	Librewolf	librewolf
	Qutebrowser	qutebrowser
  Terminals
	  Simple Terminal		st
	  Xterm		xterm
  Multimedia
	MusikCube		st -e musikcube
  Graphics
	Gpick (Color Picker)	gpick
	GIMP (Image Editor)	gimp

襤  Shutdown		poweroff
ﰇ  Reboot			reboot
EOF

