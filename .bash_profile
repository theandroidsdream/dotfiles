if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi

if [ -f "$HOME/.bash_aliases" ]; then
	. "$HOME/.bash_aliases"
else
	echo "$HOME/.bash_aliases was NOT loaded (cp and mv may be unsafe!)"
fi

# Add personal scripts to path
export PATH=$PATH:"$HOME/bin"
