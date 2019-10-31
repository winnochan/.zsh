export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# zmodload zsh/zprof

# source ${ZSH_DIR}/zplugin.zsh
source ${ZSH_DIR}/zgen.zsh
source ${ZSH_DIR}/alias.zsh
source ${ZSH_DIR}/custom.zsh

# ssh keychain
if command -v keychain >/dev/null 2>&1; then
    # if [ "$(ps x | grep ssh-agent | grep -v grep)" = "" ]; then
        if [ -f ~/.ssh/ecdsa ]; then
            keychain -q ~/.ssh/ecdsa
        fi
    # fi

    keychain_file=$HOME/.keychain/$(hostname)-sh
    if [ -f $keychain_file ]; then
        source $keychain_file
    fi
fi

# checking the cached .zcompdump once a day
autoload -Uz compinit
for dump in ${ZDOTDIR:-$HOME}/.zcompdump(N.mh+24); do
    compinit
done
compinit -C

# zprof
