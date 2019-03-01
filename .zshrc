export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source ${ZDOTDIR:-$ZSH_DIR}/zgen.zsh

source ${ZDOTDIR:-$ZSH_DIR}/alias.zsh
source ${ZDOTDIR:-$ZSH_DIR}/custom.zsh

autoload -Uz compinit && compinit
