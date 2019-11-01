export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# zmodload zsh/zprof

# source ${ZSH_DIR}/zplugin.zsh
source ${ZSH_DIR}/zgen.zsh
source ${ZSH_DIR}/alias.zsh
source ${ZSH_DIR}/custom.zsh

# checking the cached .zcompdump once a day
autoload -Uz compinit
for dump in ${ZDOTDIR:-$HOME}/.zcompdump(N.mh+24); do
    compinit
done
compinit -C

# zprof
