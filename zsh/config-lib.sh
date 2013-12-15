USER_BIN="$HOME/bin"

function binary-installed() {
	if [ "$1" = "" ]; then
		return 1
	fi
	which -s $1 > /dev/null
}

