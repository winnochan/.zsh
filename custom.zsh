if command -v battery_pct_prompt >/dev/null 2>&1; then
    export RPROMPT="$RPROMPT $(battery_pct_prompt)"
fi

# editor
export EDITOR="emacsclient -t -a vim"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="rg --sort-files --files --null 2> /dev/null | xargs -0 dirname | uniq"
export FZF_COMPLETION_TRIGGER=';;'

# pure-zsh-theme

# blox-zsh-theme
export BLOX_CONF__ONELINE=true
export BLOX_BLOCK__CWD_TRUNC=0
export BLOX_BLOCK__HOST_USER_SHOW_ALWAYS=true
export BLOX_BLOCK__HOST_MACHINE_SHOW_ALWAYS=true
export BLOX_BLOCK__SYMBOL_ALTERNATE='◇'
export BLOX_BLOCK__NODEJS_COLOR='green'
export BLOX_BLOCK__PYENV_COLOR='green'
export BLOX_BLOCK__VIRTUALENV_COLOR='green'
export BLOX_BLOCK__TIME_COLOR='green'
export BLOX_BLOCK__BGJOBS_COLOR='green'

# dracula-zsh-theme

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
    brew_prefix=$(brew --prefix)
    brew_repo=$(brew --repo)
    export HOMEBREW_NO_AUTO_UPDATE=true
    export MANPATH="${brew_prefix}/share/man:$MANPATH"
    export INFOPATH="${brew_prefix}/share/info:$INFOPATH"
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

    # zsh completions
    fpath=(${brew_prefix}/share/zsh/site-functions ${brew_repo}/completions/zsh $fpath)

    # ccache
    # if command -v ccache >/dev/null 2>&1; then
    #     if [ "$(uname)" = "Darwin" ]; then
    #         export PATH="/usr/local/opt/ccache/libexec:$PATH"
    #     elif [ "$(uname)" = "Linux" ]; then
    #         export PATH="$HOME/.linuxbrew/opt/ccache/libexec:$PATH"
    #     fi
    # fi
fi

# fasd
if [ "$(uname)" = "Darwin" ]; then
    alias o='a -e open_command'
fi

# init goenv
init_goenv() {
    if command -v goenv >/dev/null 2>&1; then
        eval "$(goenv init -)"
    fi
    return 0
}
# lazy init goenv
goenv() {
    unfunction "goenv"
    init_goenv
    goenv "$@"
    return 0
}

# init jenv
init_jenv() {
    if command -v jenv >/dev/null 2>&1; then
        eval "$(jenv init -)"
    fi
    return 0
}

# lazy init jenv
jenv() {
    unfunction "jenv"
    init_jenv
    jenv "$@"
    return 0
}

# init nodenv
init_nodenv() {
    if command -v nodenv >/dev/null 2>&1; then
        eval "$(nodenv init -)"
    fi
    return 0
}

# lazy init nodenv
nodenv() {
    unfunction "nodenv"
    init_nodenv
    nodenv "$@"
    return 0
}

# init pyenv
init_pyenv() {
    if command -v pyenv >/dev/null 2>&1; then
        eval "$(pyenv init -)"
        # eval "$(pyenv virtualenv-init -)"
    fi
    return 0
}

# lazy init pyenv
pyenv() {
    unfunction "pyenv"
    init_pyenv
    pyenv "$@"
    return 0
}

# init rbenv
init_rbenv() {
    if command -v rbenv >/dev/null 2>&1; then
        eval "$(rbenv init -)"
    fi
    return 0
}

# lazy init rbenv
rbenv() {
    unfunction "rbenv"
    init_rbenv
    if command -v rbenv >/dev/null 2>&1; then
        rbenv "$@"
    fi
    return 0
}

# init scalaenv
init_scalaenv() {
    if command -v scalaenv >/dev/null 2>&1; then
        eval "$(scalaenv init -)"
    fi
    return 0
}

# lazy init scalaenv
scalaenv() {
    unfunction "scalaenv"
    init_scalaenv
    if command -v scalaenv >/dev/null 2>&1; then
        scalaenv "$@"
    fi
    return 0
}

i() {
    init_goenv && init_jenv && init_nodenv && init_pyenv && init_rbenv && init_scalaenv
    # goenv && jenv && nodenv && pyenv && rbenv && scalaenv
}

if [ "$(uname)" = "Linux" ]; then
    init_pyenv
fi
