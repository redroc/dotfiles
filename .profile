export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=$HOME/.firefox/firefox
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/nextcloud/scripts:$PATH:/home/r3drock/.local/share/OpenPuff_release"

if [ -f ~/.switchcapslockandescape ]; then
	setxkbmap -option caps:swapescape
fi
