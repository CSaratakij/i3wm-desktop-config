export ZSH=/home/$USER/.oh-my-zsh

ZSH_THEME="mh"
plugins=(git colored-man-pages compleat)

source $ZSH/oh-my-zsh.sh

alias vi=vim
alias v=vim

export EDITOR=vim

# --------------------------------------------------
#|            Credit : Chanon BagIdea              |
#|-------------------------------------------------|
#|     "https://github.com/RealtimeBagIdea"        |
#|-------------------------------------------------|
#|     lp = cd to last process working dir         |
#|     cl = cd to last process working dir & ls -a |
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

alias cd="cd_ex"
alias cl="cd_el"
