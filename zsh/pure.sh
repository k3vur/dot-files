ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
ZSH_PURE_THEME_FILE="$ZSH_CUSTOM/pure.zsh-theme"

function download-pure-theme() {
	if [ ! -d "$ZSH_CUSTOM" ]; then
		return 1
	fi
	curl $1 https://raw.github.com/sindresorhus/pure/master/pure.zsh -o $ZSH_PURE_THEME_FILE
	return $?
}

if [ ! -f $ZSH_PURE_THEME_FILE ]; then
	if [ -d "$HOME/.oh-my-zsh" ]; then
		echo "Installing pure zsh theme..."
		download-pure-theme -s
	fi
fi

if [ -f $ZSH_PURE_THEME_FILE ]; then
	ZSH_THEME="pure"
fi

