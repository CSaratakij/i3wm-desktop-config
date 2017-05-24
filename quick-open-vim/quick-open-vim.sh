#!/bin/bash

CURRENT_USER=$(whoami)

if [ "$CURRENT_USER" == "root" ]; then
    CACHE_DIR="/root/.cache/quick-open-vim"
else
    CACHE_DIR="/home/$CURRENT_USER/.cache/quick-open-vim"
fi

CACHE_FILE="$CACHE_DIR/cache"

Init()
{
    if [ ! -f "$CACHE_FILE" ]; then
        mkdir $CACHE_DIR
        touch $CACHE_FILE
    fi
}

OpenVim()
{
    vim $CACHE_FILE
}

ClearCache()
{
    echo "" > $CACHE_FILE
}

CopyToClipboard()
{
    xclip -sel clip < $CACHE_FILE
}

Init

if [ "$1" == "-o" ]; then
    ClearCache
    OpenVim
elif [ "$1" == "-c" ]; then
    CopyToClipboard
    ClearCache
elif [ "$1" == "-a" ]; then
    ClearCache
    OpenVim
    CopyToClipboard
    ClearCache
fi
