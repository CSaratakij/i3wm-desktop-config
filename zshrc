export PATH=$PATH:/home/csaratakij/Tools/Utils/Java/jdk1.8.0_112/bin/:/home/csaratakij/Tools/bin/:/home/csaratakij/Tools/Utils/mongodb-linux-x86_64-3.2.11/bin/
export JAVA_HOME=/home/csaratakij/Tools/Utils/Java/jdk1.8.0_112/

export ZSH=/home/csaratakij/.oh-my-zsh

ZSH_THEME="geometry"
plugins=(git colored-man-pages compleat)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vi="nvim"
alias v="nvim"

export VIM="/usr/share/nvim"
export VIMRUNTIME="/usr/share/nvim/runtime"
export EDITOR="/usr/bin/nvim"

export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
