alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ..; cd..'
alias ll='ls -laFh'
alias grep='grep --color=auto'
alias du='du -sh'
alias v='mvim'
alias o='open .'

alias find-empty-dirs='find . -type d -empty'

# cleaning up the terminal logs when terminal slows down
alias turbo='sudo rm -f /private/var/log/asl/*.asl' 

# log into my nas
alias syno='ssh -p 22 root@kevin-syno.local'

# make aliases work through sudo
alias sudo='sudo '
alias fu='sudo '
