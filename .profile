XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$HOME/.cargo/bin:$PATH"

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

export QT_QPA_PLATFORMTHEME=gtk2

PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
export DOOMDIR=~/doom-emacs-config
