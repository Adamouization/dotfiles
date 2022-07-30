#!/bin/bash
# .bashrc
# Adam Jaamour

#######################################################

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

#######################################################
# EXPORTS
#######################################################

# Expand the history size, remove duplicate lines, do not add lines that start with a space and add date
export HISTFILESIZE=10000
export HISTSIZE=1000
export HISTCONTROL=erasedups:ignoredups:ignorespace
HISTTIMEFORMAT="%F %T "

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

# Set the default editor
export EDITOR=vim
export VISUAL=vim

# To have colors for ls and all grep commands such as grep, egrep and zgrep
export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'

#######################################################
# ALIASES
#######################################################

# general alises
alias cls='clear'
alias vi='vim'
alias home='cd ~'

# directory listing commands aliases
alias ls='ls -CFl --color=always'
alias la='ls -CFla --color=always'

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

# Search command line history
alias h="history | grep "

# Search files in the current folder
alias f="find . | grep "
