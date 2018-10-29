export ENHANCD_FILTER=fzy
export BLOX_CONF__ONELINE=true
export BLOX_BLOCK__CWD_TRUNC=0
export BLOX_BLOCK__HOST_USER_SHOW_ALWAYS=true
export BLOX_BLOCK__HOST_MACHINE_SHOW_ALWAYS=true

export BLOX_BLOCK__NODEJS_COLOR='green'
export BLOX_BLOCK__PYENV_COLOR='green'
export BLOX_BLOCK__VIRTUALENV_COLOR='green'
export BLOX_BLOCK__TIME_COLOR='green'


export GTAGSLABEL=pygments
export SPACESHIP_TIME_SHOW=true
export EDITOR="emacsclient -t -a vim"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=9'
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# brew
if command -v brew >/dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
    elif [ "$(uname)" = "Linux" ]; then
        export HOMEBREW_BUILD_FROM_SOURCE=1
    fi
fi

# ccache
if command -v ccache >/dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        export PATH="/usr/local/opt/ccache/libexec:$PATH"
    elif [ "$(uname)" = "Linux" ]; then
        export PATH="$HOME/.linuxbrew/opt/ccache/libexec:$PATH"
    fi
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
