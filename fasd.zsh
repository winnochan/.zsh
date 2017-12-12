if [ $commands[fasd] ]; then # check if fasd is installed
    fasd_cache="${ZDOTDIR:-$HOME}/.fasd-init-cache.zsh"
    if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
        fasd --init auto >| "$fasd_cache"
    fi
    source "$fasd_cache"
    unset fasd_cache

    alias fv='f -e vim'
    alias fe='f -e ${EDITOR:-$e}'
    alias ao='a -e open_command'
fi
