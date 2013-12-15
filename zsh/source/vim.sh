# install macvim with python from homebrew, symlink vim to mvim and set
# mvim as $EDITOR

if ! binary-installed mvim; then
	echo "installing python + vim from homebrew"
	brew install python
	brew install vim
fi

VIM_BIN=$USER_BIN/vim
if [ ! -f $VIM_BIN ]; then
	echo "symlinking mvim to $USER_BIN"
	ln -s $(which mvim) $VIM_BIN
fi
unset VIM_BIN

export EDITOR="mvim -f"
