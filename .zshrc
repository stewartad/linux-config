# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yequari/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# autoload zkbd
# zkbd

source $HOME/.zkbd/alacritty-:0

bindkey "${key[Home]}" beginning-of-line
bindkey "${key[End]}" end-of-line
bindkey "${key[Delete]}" delete-char
export PATH=$PATH:$HOME/bin

PROMPT="%n@%m %B%F{36}%d%f%b> "
RPROMPT="%F{11}%?%f %*"

# startup sway on login on terminal 1
if [ "$(tty)" = "/dev/tty1" ] || [ "$(tty)" = "/dev/ttyv0" ] ; then
    if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR="$HOME/.config/xdg"
	rm -rf $XDG_RUNTIME_DIR
	mkdir -p $XDG_RUNTIME_DIR
    fi
    export QT_QPA_PLATFORMTHEME=gtk2
    export QT_QPA_PLATFORM=wayland
    export GDK_BACKEND=wayland
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway
    export WLR_NO_HARDWARE_CURSORS=1
    XDG_CURRENT_DESKTOP=sway dbus-run-session sway
    #exec sway
fi
XDG_RUNTIME_DIRS=:/var/lib/flatpak/export/share
