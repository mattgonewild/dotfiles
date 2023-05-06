# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# umask
umask 027

export EDITOR="/usr/bin/vim"

# bash history related
# TODO: read more about this
export HISTFILE=".bash_history_alt"
export HISTSIZE=1000000000
export HISTFILESIZE=-1
# nonexistent  currently
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Flutter
export PATH="$PATH:`pwd`/flutter/bin"

# Chrome
export CHROME_EXECUTABLE="/usr/bin/chromium-browser"

# Carbonyl
export PATH="$PATH:`pwd`/carbonyl/bin/latest"

