export PATH=~/bin:$PATH       # put ~/bin into PATH
#export TERM='xterm-256color' # set colors

# set (m)vim as the default $EDITOR
if which -s mvim > /dev/null; then
	export EDITOR='mvim -f'
elif which -s vim > /dev/null; then
	export EDITOR='vim'
fi

# set $PAGER to vimpager
which -s vimpager > /dev/null && export PAGER='vimpager'

