##########################################################
# Environemnt
##########################################################
# prompt
export PS1="[\[\e[32m\]\u@\H \[\e[36m\]\w\[\e[0m\]] $ "
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export TERM=xterm-color

# Java
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_22-b04-307.jdk/Contents/Home

# Maxine
export MAXINE_HOME=~/maxine
export MAXINE_VM_HOME=${MAXINE_HOME}/Native/generated/darwin
export JUNIT4_CP=/usr/share/java/junit-4.8.1.jar

# macport
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

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
alias ls="ls -lAh"

# rm
alias rm='rm -i'
