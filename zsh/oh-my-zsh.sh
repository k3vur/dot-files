# oh-my-zsh settings
ZSH_THEME="arrow"
plugins=(git osx lol vundle extract brew mercurial themes mvn)

# load zsh
ZSH=$HOME/.oh-my-zsh
if [ -d "$ZSH" ]; then
	source $ZSH/oh-my-zsh.sh
else
	echo "oh-my-zsh not installed. install with:"
	echo "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh"
fi

