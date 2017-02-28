export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export PATH=$PATH:/home/csaratakij/Tools/bin/
export TERMINAL=st

session=${1:-i3}

case $session in
	i3		) exec ibus-daemon -drx &
		exec compton -CG &
		exec i3
	;;
	gnome		) exec gnome-session
	;;
	opsu	) exec java -jar /home/csaratakij/Opsu/opsu-0.14.0.jar
	;;
	firefox	) exec --no-startup-id xflux -l 13.9706, 100.6457 -k 4200 -nofork &
		exec ibus-daemon -drx &
		exec firefox
	;;
	gparted	) exec --no-startup-id xflux -l 13.9706, 100.6457 -k 4200 -nofork &
		exec gksudo gparted
	;;
esac
