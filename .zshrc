# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sq3"

HIST_STAMPS="mm/dd/yyyy"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias t='/tmp/tmp'
alias repos='/Users/iMarc/Documents/repository'
alias speedtest='/usr/local/bin/speedtest_cli'
alias pastebin='/usr/local/bin/pastebinit'
alias yplayer='/usr/local/bin/mpsyt'
alias enterenv='. env/bin/activate'
alias v='/usr/bin/vim -p'
alias s='/usr/local/bin/subl'
alias hs='history | grep'
alias notes='~/Documents/notes/'
alias pw='pwgen 15 1 -s -y | tr -d '\n' | pbcopy'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias w='wunderline'
alias l='ls -lahtr --color=auto'
alias docs='cd /Volumes/Boxcryptor/Google\ Drive/Private/Docs'
alias glog='git log --graph --color=always --all --pretty=format:"%C(auto)%h%d %s (%Cred%an, %ai)"'
alias wb='workbench'
alias f='find . -iname'
alias mails="/tmp/tmp/mail/"

export PATH=/usr/local/bin:$PATH
export PATH=/Users/iMarc/Documents/repository/privat/bin:$PATH
export PATH=/Users/iMarc/Documents/repository/privat/bin-pub:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANWIDTH=75

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

eval `dircolors ~/.dircolors-solarized/dircolors.256dark`
