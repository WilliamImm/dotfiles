# Display the current weather upon login
curl -sNL wttr.in | head -n 7

# On login to the first virtual terminal, always start X
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then 
	exec startx 2>&1 | tee x-start.log 
fi

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$HOME/.cargo/bin:$PATH"

export XDG_DATA_DIRS="/usr/local/share/:/usr/share/"
