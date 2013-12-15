# add mactex path if installed

if [ -d /usr/texbin ]; then
	export PATH=/usr/texbin:$PATH
fi
