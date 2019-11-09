alias cp='cp -i'
alias mv='mv -i'

alias p='less'
alias more='less'
alias l='ls -laT'
alias pu='pushd'
alias po='popd'
alias j='jobs -l'
alias xx='exit'
mcd() { mkdir "$1"; cd "$1"; }

alias yt="youtube-dl --add-metadata -c" # Download video link
alias yta="youtube-dl --add-metadata --audio-format mp3 --audio-quality 0 -xc" # Download only audio
alias ytap="youtube-dl --add-metadata --audio-format mp3 --audio-quality 0 -xc -o '$HOME/beets_to_import/%(title)s-%(id)s.%(ext)s'" # Move directly to a processing dir

# Specific to OSX or *nix
if [ $(uname -s) = "Darwin" ]; then
	echo "OS is Darwin, applying additional OSX settings"
	# Use the clipboard with command input and output
	cbi() { pbpaste | "$@"; }
	cbo() { "$@" | pbcopy; }
	cbio() { pbpaste | "$@" | pbcopy; }

	# File visibility
	alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
	alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

	# Make md5 output more like Linux
	alias md5='md5 -r'

	# Colourize ls output
	alias l='ls -laTG'
	alias ls='ls -G'

	# Kaleidoscope
	alias kaleidodiff='git difftool -y -t Kaleidoscope'
	alias kaleidomerge='git mergetool -y -t Kaleidoscope'
else
	alias ls='ls --color --time-style="+%b %d %Y %H:%M"'
	alias l='ls --color -lAGbh --time-style="+%b %d %Y %H:%M"'

	alias flavour='cat /etc/*-release'
fi
