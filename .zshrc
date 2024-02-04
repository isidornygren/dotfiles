# Read bashrc
emulate sh -c 'source ~/.bashrc'

# Path to your oh-my-zsh installation.
export ZSH="/Users/isidor/.oh-my-zsh"

# Cargo binaries
export PATH=$HOME/.cargo/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# compinit -d ${ZDOTDIR}/zcompdump
zstyle ':completion:*' cache-path "${ZDOTDIR}/cache"

setopt PROMPT_SUBST
PS1='%F{blue}%n%f@%F{green}%m%F{yellow}%~ %F{magenta}$(parse_git_branch)%f%(!.#.$) '

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Convert music files in directory to apple lossless
alias acon='for file in *.flac; do output_file="${file%.flac}.m4a"; ffmpeg -i "$file" -map a:0 -c:a alac "converted/$output_file"; done'
