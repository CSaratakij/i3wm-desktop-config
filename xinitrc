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
	opsu	) exec java -jar Opsu/opsu-0.13.0.jar
	;;
esac
