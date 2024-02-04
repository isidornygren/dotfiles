# Path to your oh-my-zsh installation.
export ZSH="/Users/isidor/.oh-my-zsh"

# Cargo binaries
export PATH=$HOME/.cargo/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# compinit -d ${ZDOTDIR}/zcompdump
zstyle ':completion:*' cache-path "${ZDOTDIR}/cache"

# Style config
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

setopt PROMPT_SUBST
PS1='%F{blue}%n%f@%F{green}%m%F{yellow}%~ %F{magenta}$(parse_git_branch)%f%(!.#.$) '

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Prefered editor
export EDITOR='vim'

# Convert music files in directory to apple lossless
alias acon='for file in *.flac; do output_file="${file%.flac}.m4a"; ffmpeg -i "$file" -map a:0 -c:a alac "converted/$output_file"; done'

# Adding color
alias ls='gls --color --group-directories-first' 
alias grep='grep --color=auto'

# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# Nvm use (using n)
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
# # Selenium geckodriver
# export PATH=$PATH:/Users/isidor/Projects/baltic/geckodriver

# # Preview man pages
# function preman() { man -t "$@" | open -f -a "Preview" ;}

# Rust game
# export LIBRARY_PATH=/Users/isidor/Projects/game-rust/vendors/SFML/lib:/Users/isidor/Projects/game-rust/vendors/CSFML/lib
# export DYLD_LIBRARY_PATH=/Users/isidor/Projects/game-rust/vendors/SFML/lib:/Users/isidor/Projects/game-rust/vendors/CSFML/lib
# export RUST_BACKTRACE=1

# Set vimode in terminal
# set -o vi
# bindkey -v
