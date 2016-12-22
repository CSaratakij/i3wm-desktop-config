export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export PATH=$PATH:/home/csaratakij/Tools/bin/
export TERMINAL=st
exec fcitx &
exec compton -CG &
exec i3
