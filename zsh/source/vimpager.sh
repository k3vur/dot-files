# load vimpager

if ! binary-installed vimpager; then
	echo "installing vimpager"
	brew install vimpager
fi

export PAGER="vimpager"
