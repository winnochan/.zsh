# try cache brew env
brew_env_cache=$ZSH_DIR/.cache/brew/env.zsh
if [ -f $brew_env_cache ]; then
    source $brew_env_cache
elif command -v brew >/dev/null 2>&1; then
    brew shellenv > $brew_env_cache
    source $brew_env_cache
else
    brew_base="/usr/local"
    test -f $brew_base/bin/brew && $brew_base/bin/brew shellenv > $brew_env_cache
    brew_base="$HOME/.linuxbrew"
    test -f $brew_base/bin/brew && $brew_base/bin/brew shellenv > $brew_env_cache
    brew_base="/home/linuxbrew/.linuxbrew"
    test -f $brew_base/bin/brew && $brew_base/bin/brew shellenv > $brew_env_cache

    test -f $brew_env_cache && source $brew_env_cache
fi

if command -v brew >/dev/null 2>&1; then
    export HOMEBREW_NO_AUTO_UPDATE=true
    if [ "$ZSH_SYS" = "Darwin" ]; then
        export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
    fi

    zsh_share_path=$HOMEBREW_PREFIX/share/zsh
    if [ -d $zsh_share_path ]; then
        fpath=($zsh_share_path/functions $zsh_share_path/site-functions  $fpath)
    fi

    zsh_completions=$HOMEBREW_PREFIX/share/zsh-completions
    if [ -d $zsh_completions ]; then
        fpath=($zsh_completions $fpath)
    fi

    # openssl
    if [ -d ${HOMEBREW_PREFIX}/opt/openssl ]; then
        export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
        export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/openssl/lib"
        export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/openssl/include"
        export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/openssl/lib/pkgconfig"
    fi

    # node@10
    if [ -d ${HOMEBREW_PREFIX}/opt/node@10 ]; then
        export PATH="${HOMEBREW_PREFIX}/opt/node@10/bin:$PATH"
        export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/node@10/lib"
        export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/node@10/include"
    fi

    # sqlite3
    if [ -d ${HOMEBREW_PREFIX}/opt/sqlite ]; then
        export PATH="${HOMEBREW_PREFIX}/opt/sqlite/bin:$PATH"
        export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/sqlite/lib"
        export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/sqlite/include"
        export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/sqlite/lib/pkgconfig"
    fi

    # ccache
    if command -v ccache >/dev/null 2>&1; then
        export PATH="${HOMEBREW_PREFIX}/opt/ccache/libexec:$PATH"
    fi

    # fzf
    # fzf_path=${HOMEBREW_PREFIX}/opt/fzf
    # if [ -d $fzf_path ]; then
    #     export PATH=$fzf_path/bin:$PATH
    #     source $fzf_path/shell/completion.zsh 2> /dev/null
    #     source $fzf_path/shell/key-bindings.zsh
    # fi

    if [ -d $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk ]; then
        export GOOGLE_CLOUD_SDK_HOME="$HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
        if [ -d $GOOGLE_CLOUD_SDK_HOME ]; then
            source $GOOGLE_CLOUD_SDK_HOME/path.zsh.inc
            source $GOOGLE_CLOUD_SDK_HOME/completion.zsh.inc
        fi
    fi

    # mono
    export MONO_GAC_PREFIX="${HOMEBREW_PREFIX}"

    # anaconda3
    if [ -d ${HOMEBREW_PREFIX}/anaconda3 ]; then
        export PATH=${HOMEBREW_PREFIX}/anaconda3/bin:$PATH
    fi

    # miniconda
    if [ -d ${HOMEBREW_PREFIX}/Caskroom/miniconda ]; then
        export PATH=${HOMEBREW_PREFIX}/Caskroom/miniconda/base/bin:$PATH
    fi

    # llvm
    if [ -d ${HOMEBREW_PREFIX}/opt/llvm ]; then
        export PATH=${HOMEBREW_PREFIX}/opt/llvm/bin:$PATH
    fi
fi
