export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export PATH=$PATH:/home/csaratakij/Tools/bin/
export TERMINAL=urxvt

session=${1:-i3}

case $session in
	i3		) exec compton &
        exec i3
	;;
esac
