# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zwei"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby brew macport git-flow mercurial)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#

# zwei's stuff
##########################################################
# Environemnt
##########################################################
# prompt
#export PS1="[\[\e[32m\]\u@\H \[\e[36m\]\w\[\e[0m\]] $ "
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export TERM=xterm-color
autoload -U colors
colors

# Java
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/Current/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

# Homebrew
export PATH=/usr/local/bin:$PATH

# eclipse
export ECLIPSE_HOME=/Applications/eclipse

# c1xvisualizer
export PATH=~/Documents/program/free_apps/c1visualizer/bin:$PATH

##########################################################
# Alias
##########################################################
# cd
alias ..='cd ..'

# ls
alias ls="ls -lAhG"

# rm
alias rm='rm -i'

