#!/usr/bin/env sh

function abs_path () {
	pushd $(dirname $1) > /dev/null
	echo $(pwd)
	popd > /dev/null
}

DOT_FILES=$HOME/.dot-files

ln -s $(abs_path $0) $DOT_FILES

ln -s $DOT_FILES/zsh/zshrc $HOME/.zshrc
ln -s $DOT_FILES/git/gitconfig .gitconfig
ln -s $DOT_FILES/hg/hgrc .hgrc
ln -s $DOT_FILES/bin $HOME/bin
ln -s $DOT_FILES/bash/bash_profile $HOME/.bash_profile
ln -s $DOT_FILES/slate/slate.js $HOME/.slate.js

