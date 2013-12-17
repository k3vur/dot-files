# install macvim with python from homebrew, symlink vim to mvim and set
# mvim as $EDITOR

if ! binary-installed mvim; then
	echo "installing python + vim from homebrew"
	brew install python
	brew install macvim --override-system-vim
fi

export EDITOR="mvim -f"
