# If not running interactively, do nothing.
[[ $- != *i* ]] && return

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

\E[0;10m

export PS1="\[\033[38;5;12m\]\u\[\033[0;10m\]@\[\033[0;10m\]\[\033[38;5;10m\]\h\[\033[0;10m\]\[\033[38;5;11m\]\w\[\033[0;10m\] \[\033[0;10m\]\[\033[38;5;13m\]\$(parse_git_branch)\[\033[0;10m\]\\$ "

alias ls='ls --color=auto'