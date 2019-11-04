# .bash_profile
# Adam Jaamour

# Sourcing .bashrc from this .bash_profile file, then putting PATH and common settings in .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export PATH="/usr/local/opt/ruby/bin:$PATH"

# aliases
alias ls='ls -CFl'
alias ls -a='ls -CFla'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias cd1='cd ../'                       	# Go back 2 directory levels
alias cd2='cd ../../'                       # Go back 2 directory levels
alias cd3='cd ../../../'                    # Go back 3 directory levels
alias cd4='cd ../../../../'                 # Go back 4 directory levels
alias cd5='cd ../../../../../'              # Go back 5 directory levels
alias cd6='cd ../../../../../../'           # Go back 6 directory levels
