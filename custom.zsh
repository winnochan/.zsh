# dasht
export PATH=$ZSH_DIR/.dasht/bin:$PATH
export MANPATH=$ZSH_DIR/.dasht/man:$MANPATH
export DASHT_DOCSETS_DIR=$ZSH_DIR/.dasht/docsets

if [ -d $ZSH_DIR/.dasht ]; then
    source $ZSH_DIR/.dasht/etc/zsh/completions.zsh
    fpath+=$ZSH_DIR/.dasht/etc/zsh/completions
fi

if command -v battery_pct_prompt >/dev/null 2>&1; then
    export RPROMPT="$RPROMPT $(battery_pct_prompt)"
fi

# zsh integrated completion
functions_path="$HOMEBREW_PREFIX/share/zsh/functions"
if [ -d $functions_path ]; then
    fpath=($functions_path $fpath)
fi
fpath=(${ZSH_DIR}/completions $fpath)

# brew
if command -v brew >/dev/null 2>&1; then
    export HOMEBREW_NO_AUTO_UPDATE=true
    if [ "$(uname)" = "Darwin" ]; then
        export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
    fi

    # zsh completions
    fpath=($fpath ${HOMEBREW_PREFIX}/share/zsh/site-functions)

    # openssl
    export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
    export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/openssl/lib"
    export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/openssl/include"
    export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/openssl/lib/pkgconfig"

    # node@10
    export PATH="${HOMEBREW_PREFIX}/opt/node@10/bin:$PATH"
    export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/node@10/lib"
    export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/node@10/include"

    # sqlite3
    export PATH="${HOMEBREW_PREFIX}/opt/sqlite/bin:$PATH"
    export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/sqlite/lib"
    export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/sqlite/include"
    export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/sqlite/lib/pkgconfig"

    # ccache
    if command -v ccache >/dev/null 2>&1; then
        export PATH="${HOMEBREW_PREFIX}/opt/ccache/libexec:$PATH"
    fi

    # fzf
    if command -v fzf >/dev/null 2>&1; then
        export PATH="${HOMEBREW_PREFIX}/opt/fzf/bin:$PATH"
        source "${HOMEBREW_PREFIX}/opt/fzf/shell/completion.zsh" 2> /dev/null
        source "${HOMEBREW_PREFIX}/opt/fzf/shell/key-bindings.zsh"
    fi
fi

# fasd
if [ "$(uname)" = "Darwin" ]; then
    alias o='a -e open_command'
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

# init_nodenv

ip=""
if command -v ip >/dev/null 2>&1; then
    ip=$(ip route get 1 | awk '{print $NF;exit}')
fi

if [ $ip = "192.168.0.80" ]; then
    init_pyenv
fi
