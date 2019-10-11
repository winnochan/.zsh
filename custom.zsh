# zsh integrated completion
# functions_path="$HOMEBREW_PREFIX/share/zsh-completions"
# if [ -d $functions_path ]; then
#     fpath=($functions_path $fpath)
# fi

functions_path="$HOMEBREW_PREFIX/share/zsh/functions"
if [ -d $functions_path ]; then
    fpath=($functions_path $fpath)
fi
fpath=(${ZSH_DIR}/completions $fpath)

# ssh keychain
if [ -f $HOME/.keychain/gamesvr-sh ]; then
    source $HOME/.keychain/gamesvr-sh
fi

# brew
if command -v brew >/dev/null 2>&1; then
    export HOMEBREW_NO_AUTO_UPDATE=true
    # if [ "$ZSH_SYS" = "Darwin" ]; then
    #     export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
    # fi

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

    export GOOGLE_CLOUD_SDK_HOME="$HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
    if [ -d $GOOGLE_CLOUD_SDK_HOME ]; then
        source $GOOGLE_CLOUD_SDK_HOME/path.zsh.inc
        source $GOOGLE_CLOUD_SDK_HOME/completion.zsh.inc
    fi

    # mono
    export MONO_GAC_PREFIX="${HOMEBREW_PREFIX}"
fi

# if command -v pipenv >/dev/null 2>&1; then
#     eval "$(pipenv --completion)"
# fi

# fasd
# if [ "$ZSH_SYS" = "Darwin" ]; then
#     alias o='a -e open_command'
# fi

# editor
export EDITOR="emacsclient -t -a vim"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="rg --sort-files --files --null 2> /dev/null | xargs -0 dirname | uniq"
export FZF_COMPLETION_TRIGGER=';;'

# pure-zsh-theme

# blox-zsh-theme
export BLOX_CONF__ONELINE=false
export BLOX_BLOCK__CWD_TRUNC=2
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

# zsh-autosuggest
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=9'

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

init_gvm() {
    [[ -s "/Users/winnochan/.gvm/scripts/gvm" ]] && source "/Users/winnochan/.gvm/scripts/gvm"
}

gvm() {
    unfunction "gvm"
    init_gvm
    if command -v gvm >/dev/null 2>&1; then
        gvm "$@"
    fi
    return 0
}

i() {
    init_goenv && init_jenv && init_nodenv && init_pyenv && init_rbenv && init_scalaenv && init_gvm
}

# init_nodenv
# init_pyenv
init_gvm
