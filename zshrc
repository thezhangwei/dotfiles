# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/dotfiles/_oh-my-zsh-custom

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
plugins=(git osx ruby brew git-flow mercurial)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
# zwei's stuff
##########################################################
# Environemnt
##########################################################
# history
export HISTSIZE=130000
export SAVEHIST=130000

# prompt
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export TERM=xterm-color
autoload -U colors
colors

export EDITOR=vim

# Java

case "$OSTYPE" in
  darwin*)
    #export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home
    #export EXTRA_JAVA_HOMES=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
    ;;
  linux*)
    
    ;;
esac

# fbandroid
export ANDROID_SDK=/opt/android_sdk
export FBANDROID=/Users/zwei/fbsource/fbandroid
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools
export PATH=${PATH}:${ANDROID_SDK}/build-tools/23.0.1

# Homebrew
export PATH=/usr/local/bin:$PATH

# eclipse
export ECLIPSE_HOME=/Applications/eclipse

# c1xvisualizer
export PATH=~/Documents/program/c1visualizer/bin:$PATH

# mxtool for fastr
export PATH=/Users/zwei/Workspace/mxtool2:$PATH
export MXTOOL_HOME=/Users/zwei/Workspace/mxtool2

# sublime text
export PATH=~/local/bin:$PATH

# buck dev
export PATH=~/local/buck/bin:$PATH

# local binary
export PATH=~/.local/bin:$PATH

##########################################################
# Alias
##########################################################
# cd
alias ..='cd ..'

# ls
alias ls="ls -lAhG"

# less
alias less="less -N"

# rm
alias rm='rm -i'

# diff
alias diff='colordiff'

# apm
alias apm='apm --color'

# mx
alias mx='mx --src-suitemodel nested'

# update
alias up='brew update; brew upgrade; upgrade_oh_my_zsh'

# hg
alias h='hg'

# clang-format
alias clang-format-diff='cd $(hg root) && hg diff -U0 -r . | clang-format-diff.py -p 1 -i && cd -'

##########################################################
# Arch linux
##########################################################
# ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

case "$OSTYPE" in
  linux*)
    ibus-daemon -drx
    ;;
esac

# i3
export TERMINAL=urxvt


##########################################################
# Custom local configs
##########################################################
LOCAL_ZSHRC="~/.zshrc.local"
if [ -f $LOCAL_ZSHRC ]; then
  source $LOCAL_ZSHRC
fi

export FBANDROID_DIR=/Users/zwei/fbsource/fbandroid
alias quicklog_update=/Users/zwei/fbsource/fbandroid/scripts/quicklog/quicklog_update.sh
alias qlu=quicklog_update

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/tools/bin:${ANDROID_SDK}/platform-tools
