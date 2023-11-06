# .bash_profile
# Adam Jaamour

# Sourcing .bashrc from this .bash_profile file, then putting PATH and common settings in .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Define aliases
# General
alias cd..='cd ../;pwd'                         # Go back 1 directory level (for fast typers)
alias cd1='cd ../;pwd'                       	# Go back 2 directory levels
alias cd2='cd ../../;pwd'                       # Go back 2 directory levels
alias cd3='cd ../../../;pwd'                    # Go back 3 directory levels
alias cd4='cd ../../../../;pwd'                 # Go back 4 directory levels
alias cd5='cd ../../../../../;pwd'              # Go back 5 directory levels
alias cd6='cd ../../../../../../;pwd'           # Go back 6 directory levels
# Git aliases
alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gl='git log'
alias gps='git push'
alias gpl='git pull'
alias grhh='git reset HEAD --hard'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you donâ€™t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Functions
function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}

# Display general information when opening terminal first time
clear
printf "\n"
#printf "   %s\n" "IP ADDR: $(curl ifconfig.me)"
#printf "   %s\n" "USER: $(echo $USER)"
printf "   %s\n" "DATE: $(date)"
printf "   %s\n" "UPTIME: $(uptime -p)"
printf "   %s\n" "HOSTNAME: $(hostname -f)"
#printf "   %s\n" "CPU: $(awk -F: '/model name/{print $2}' | head -1)"
printf "   %s\n" "KERNEL: $(uname -rms)"
printf "   %s\n" "PACKAGES: $(dpkg --get-selections | wc -l)"
#printf "   %s\n" "RESOLUTION: $(xrandr | awk '/\*/{printf $1" "}')"
printf "   %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
printf "\n"
