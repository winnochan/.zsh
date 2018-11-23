export LC_ALL="en_US.UTF-8"
export ZSH_DIR=$(dirname ${(%):-%N})

source ${ZDOTDIR:-$ZSH_DIR}/zgen.zsh
# source ${ZDOTDIR:-$ZSH_DIR}/zplug.zsh

source ${ZDOTDIR:-$ZSH_DIR}/alias.zsh
source ${ZDOTDIR:-$ZSH_DIR}/custom.zsh

if command -v fzf >/dev/null 2>&1; then
    source ${ZDOTDIR:-$ZSH_DIR}/fzf.zsh
fi

autoload -Uz compinit && compinit
