# fasd
if [ "$ZSH_SYS" = "Darwin" ]; then
    alias o='a -e open_command'
fi

# editor
export EDITOR="vim"

export HISTFILE=~/.zhistory
export HISTSIZE=10000
export SAVEHIST=1000
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# if the init scipt doesn't exist
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle ':completion:*' rehash true
