# editor
export EDITOR="emacsclient -t -a vim"

# enhancd
export ENHANCD_FILTER=fzf

# fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="rg --sort-files --files --null 2> /dev/null | xargs -0 dirname | uniq"

# zsh theme
export BLOX_CONF__ONELINE=true
export BLOX_BLOCK__CWD_TRUNC=0
export BLOX_BLOCK__HOST_USER_SHOW_ALWAYS=true
export BLOX_BLOCK__HOST_MACHINE_SHOW_ALWAYS=true

export BLOX_BLOCK__NODEJS_COLOR='green'
export BLOX_BLOCK__PYENV_COLOR='green'
export BLOX_BLOCK__VIRTUALENV_COLOR='green'
export BLOX_BLOCK__TIME_COLOR='green'

# fzf
export FZF_COMPLETION_TRIGGER=';;'

# gtags
export GTAGSLABEL=pygments

# spaceship theme
export SPACESHIP_TIME_SHOW=true

# zsh-autosuggest
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=9'

# rust
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# brew
if command -v brew >/dev/null 2>&1; then
    export HOMEBREW_NO_AUTO_UPDATE=true
    export MANPATH="$(brew --prefix)/share/man:$MANPATH"
    export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

    # zsh completions
    fpath=($(brew --prefix)/share/zsh/site-functions $(brew --repo)/completions/zsh $fpath)

    # ccache
    if command -v ccache >/dev/null 2>&1; then
        if [ "$(uname)" = "Darwin" ]; then
            export PATH="/usr/local/opt/ccache/libexec:$PATH"
        elif [ "$(uname)" = "Linux" ]; then
            export PATH="$HOME/.linuxbrew/opt/ccache/libexec:$PATH"
        fi
    fi
fi

# fasd
if [ "$(uname)" = "Darwin" ]; then
    alias o='a -e open_command'
fi

# goenv
if command -v goenv >/dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# jenv
if command -v jenv >/dev/null 2>&1; then
    eval "$(jenv init -)"
fi

# nodenv
if command -v nodenv >/dev/null 2>&1; then
    eval "$(nodenv init -)"
fi

# pyenv
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
fi

# rbenv
if command -v rbenv >/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

# scalaenv
if command -v scalaenv >/dev/null 2>&1; then
    eval "$(scalaenv init -)"
fi
