ZSH_CURRENT_USER=$(whoami)

if [ "$ZSH_CURRENT_USER" = "root" ]; then
    export ZSH=/$ZSH_CURRENT_USER/.oh-my-zsh
else
    export ZSH=/home/$ZSH_CURRENT_USER/.oh-my-zsh
fi

ZSH_THEME="mh"
plugins=(git colored-man-pages compleat)

source $ZSH/oh-my-zsh.sh

alias c=clear
alias clock="tty-clock -tcC 7"
alias vi=vim
alias v=vim

export EDITOR=vim

function batinfo() {
    while [ true ]
    do
        acpi -b;
        sleep 5;
        clear;
    done
}

function tempinfo() {
    while [ true ]
    do
        acpi -t;
        sleep 5;
        clear;
    done
}

function meminfo() {
    while [ true ]
    do
        free -h;
        sleep 5;
        clear;
    done
}

function note() {
    NOTE_DIR_NAME=Note
    NOTE_HOME=~/$NOTE_DIR_NAME
    if [ "$(ls ~ | ag $NOTE_DIR_NAME)" != "$NOTE_DIR_NAME" ]; then
        mkdir $NOTE_HOME
        echo "No Note directory has found."
        echo "Create Note directory for you."
        echo "Please execute again..."
    else
        cd $NOTE_HOME
        if [ "$1" = "" ]; then
            vim
        else
            if [ "$1" = "-l" ]; then
                ls -a $NOTE_HOME
            else
                NOTE_FILE=$(ls -a -1 | ag ^$1)
                if [ "$NOTE_FILE" != "" ]; then
                    vim $(ls -a -1 | ag ^$1) -p
                else
                    echo "Cannot find note file that name begin with :" $1
                fi
            fi
        fi
    fi
}

# --------------------------------------------------
#|            Credit : Chanon BagIdea              |
#|-------------------------------------------------|
#|     "https://github.com/RealtimeBagIdea"        |
#|-------------------------------------------------|
#|     lp = cd to last process working dir         |
#|     cl = cd to last process working dir & ls -a |
#|     reshell = zsh restart                       |
#|     fd = favorite dir                           |
# --------------------------------------------------

function cd_ex() {
    cd $1;
    echo "LASTWD=$PWD" > ~/.lprc
}

function cd_el() {
    cd $1 && ls -a;
    echo "LASTWD=$PWD" > ~/.lprc
}

function lp() {
    source ~/.lprc
    cd $LASTWD
}

function reshell() {
    exec zsh -l
}

alias cd="cd_ex"
alias cl="cd_el"
alias f="fdir.sh"

source ~/.fdirrc
