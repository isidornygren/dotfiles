export FCEDIT=nvim
# export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_icd64.json
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json

source /usr/share/nvm/init-nvm.sh

alias ls='ls --color=auto -ha --group-directories-first'

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1="\[\033[38;5;12m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;13m\]\$(parse_git_branch)\[$(tput sgr0)\]\\$ "

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
