# this is for hub (http://hub.github.com)

if ! binary-installed hub; then
	brew install hub
fi
alias git='hub'
