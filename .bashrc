# If not running interactively, do nothing.
[[ $- != *i* ]] && return

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1="\[\033[38;5;12m\]\u\[\E[0;10m\]@\[\E[0;10m\]\[\033[38;5;10m\]\h\[\E[0;10m\]\[\033[38;5;11m\]\w\[\E[0;10m\] \[\E[0;10m\]\[\033[38;5;13m\]\$(parse_git_branch)\[\E[0;10m\]\\$ "

alias ls='ls --color=auto'