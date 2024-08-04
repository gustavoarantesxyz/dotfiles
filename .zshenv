# Default programs
export TERMINAL="alacritty"
export EDITOR="nvim"
export BROWSER="firefox"
export VISUAL="vscodium"
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"

# ~/ Clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XAUTHORITY="$XDG_CONFIG_HOME/x11/xauthority"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PSQL_HISTORY="$XDG_CACHE_HOME/psql/history"
export SQLITE_HISTORY="$XDG_CACHE_HOME/sqlite/history"
export CALCHISTFILE="$XDG_CACHE_HOME/calc/history"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"

export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export LESSHISTFILE="-"
export KEYTIMEOUT=1
