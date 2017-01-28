export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export PATH=$PATH:/home/csaratakij/Tools/bin/
export TERMINAL=st

session=${1:-i3}

case $session in
	i3		) exec fcitx &
		exec compton -CG &
		exec i3
	;;
	opsu	) exec java -jar /home/csaratakij/Opsu/opsu-0.14.0.jar
	;;
	firefox	) exec --no-startup-id xflux -l 13.9706, 100.6457 -k 4200 -nofork &
		exec fcitx &
		exec firefox
	;;
	gparted	) exec --no-startup-id xflux -l 13.9706, 100.6457 -k 4200 -nofork &
		exec gksudo gparted
	;;
esac
