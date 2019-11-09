# If not running interactively, don't do anything
case $- in
	*i*) ;;
		*) return;;
esac

# Options and variables
shopt -s autocd
shopt -s checkwinsize
shopt -s histappend
HISTCONTROL=ignoredups
HISTSIZE=500  # In memory
HISTFILESIZE=2500  # On disk

# Set the prompt
if [ "$EUID" -ne 0 ]
	then export PS1='\[\033[1;33m\]\u\[\033[92m\]@\[\033[34m\]\h \[\033[35m\]\W\[\033[0m\]\$ '
	else export PS1='\[\033[31m\]\u@\h \W\]\[\033[0m\]\$ '
fi
