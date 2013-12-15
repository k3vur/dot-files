# load z (autojump replacement: https://github.com/rupa/z)

Z_SOURCE_FILE="$(brew --prefix)/etc/profile.d/z.sh"
if [ ! -f $Z_SOURCE_FILE ]; then
	brew install z
fi

source $Z_SOURCE_FILE
