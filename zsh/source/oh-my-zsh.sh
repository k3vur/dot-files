# oh-my-zsh configuration
plugins=(github vundle extract brew mvn)

ZSH="$HOME/.oh-my-zsh"
function install-oh-my-zsh() {
	if [ ! -d "$ZSH" ]; then
		if binary-installed git; then
			echo "installing oh-my-zsh"
			git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
		else
			echo "oh-my-zsh could not be installed because git is not installed."
		fi
	fi
}

function load-oh-my-zsh() {
	source $ZSH/oh-my-zsh.sh
}

# the pure zsh theme (https://github.com/sindresorhus/pure)
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
ZSH_PURE_THEME_FILE="$ZSH_CUSTOM/pure.zsh-theme"
function download-pure-theme() {
	if [ ! -d "$ZSH_CUSTOM" ]; then
		return 1
	fi
	curl $1 https://raw.github.com/sindresorhus/pure/master/pure.zsh -o $ZSH_PURE_THEME_FILE
	return $?
}

function load-pure-theme() {
	if [ ! -f $ZSH_PURE_THEME_FILE ]; then
		if [ -d "$HOME/.oh-my-zsh" ]; then
			echo "Installing pure zsh theme..."
			download-pure-theme -s
		fi
	fi

	if [ -f $ZSH_PURE_THEME_FILE ]; then
		ZSH_THEME="pure"
	fi
}

install-oh-my-zsh
load-pure-theme
load-oh-my-zsh
