export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source ${ZDOTDIR:-$ZSH_DIR}/zgen.zsh

source ${ZDOTDIR:-$ZSH_DIR}/alias.zsh
source ${ZDOTDIR:-$ZSH_DIR}/custom.zsh

# ssh keychain
if command -v keychain >/dev/null 2>&1; then
    if [ -f ~/.ssh/ecdsa ]; then
        keychain -q ~/.ssh/ecdsa
    fi
    keychain_file=$HOME/.keychain/$(hostname)-sh
    if [ -f $keychain_file ]; then
        source $keychain_file
    fi
fi


autoload -Uz compinit && compinit
