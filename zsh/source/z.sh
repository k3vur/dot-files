# load homebrew installed z (https://github.com/rupa/z)
if which -s brew > /dev/null; then
	[ -f `brew --prefix`/etc/profile.d/z.sh ] && source `brew --prefix`/etc/profile.d/z.sh
fi

