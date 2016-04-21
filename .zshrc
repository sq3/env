# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# colors
ZSH_THEME="sq3"
eval `dircolors ~/.dircolors-solarized/dircolors.256dark`

# history
HIST_STAMPS="mm/dd/yyyy"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias
alias t='/tmp/tmp'
alias repos='/Users/iMarc/Documents/repository'
alias speedtest='/usr/local/bin/speedtest_cli'
alias pastebin='/usr/local/bin/pastebinit'
alias enterenv='. env/bin/activate'
alias v='/usr/bin/vim -p'
alias s='/usr/local/bin/subl'
alias hs='history | grep'
alias notes='~/Documents/notes/'
alias pw='pwgen 15 1 -s -y | tr -d '\n' | pbcopy'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias w='wunderline'
alias l='ls -lahtr --color=auto'
alias ls='ls --color=auto'
alias glog='git log --graph --color=always --all --pretty=format:"%C(auto)%h%d %s (%Cred%an, %ai)"'
alias f='find . -iname'
alias play='mpv -fs --autosync=4 --cache=yes --cache-secs=60'

# environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'
export SHELL='zsh'

export PATH=/usr/local/bin:$PATH
export PATH=/Users/iMarc/Documents/repository/privat/bin:$PATH
export PATH=/Users/iMarc/Documents/repository/privat/bin-pub:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# bundlewrap (old and new version)
export BW_ADD_HOST_KEYS=1
export BW_ITEM_WORKERS=8
export BW_NODE_WORKERS=8

export BWADDHOSTKEYS=1
export BWITEMWORKERS=9
export BWNODEWORKERS=8

# man page
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANWIDTH=75

export LESS_TERMCAP_md=$'\e[2;33m'        # Bold
export LESS_TERMCAP_me=$'\e[0m'           # End Bold
export LESS_TERMCAP_us=$'\e[3;36m'        # Underline
export LESS_TERMCAP_ue=$'\e[0m'           # End Underline

# docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/iMarc/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
