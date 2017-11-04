export LC_ALL="en_US.UTF-8"
export EDITOR="emacsclient -t -a vim"
export SPACESHIP_TIME_SHOW=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export GTAGSLABEL=pygments
# export ALL_PROXY=socks5://127.0.0.1:1086

# Autojump
AUTOJUMP="$HOME/.autojump"
if [ -d "$AUTOJUMP" ]; then
    export PATH="$AUTOJUMP/bin:$PATH"
fi
if command -v autojump >/dev/null 2>&1; then
    source $AUTOJUMP/etc/profile.d/autojump.sh
fi

# GoEnv
GOENV="$HOME/.goenv"
GOPATH="$HOME/.gopath"
if [ -d "$GOENV" ]; then
    export PATH="$GOENV/bin:$GOPATH/bin:$PATH"
fi
if command -v goenv >/dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# JAVA_HOME
if [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

# JEnv
# JENV="$HOME/.jenv"
# if [ -d "$JENV" ]; then
#     export PATH="$JENV/bin:$PATH"
# fi
# if command -v jenv >/dev/null 2>&1; then
#     eval "$(jenv init -)"
# fi

# PyEnv
PYENV="$HOME/.pyenv"
if [ -d "$PYENV" ]; then
    export PATH="$PYENV/bin:$PATH"
fi
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# RbEnv
RBENV="$HOME/.rbenv"
if [ -d "$RBENV" ]; then
   export PATH="$PYENV/bin:$PATH"
fi
if command -v rbenv >/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

# RsEnv
RSENV="$HOME/.rsenv"
CARGO="$HOME/.cargo"
if [ -d "$RSENV" ]; then
    export PATH="$RSENV/bin:$CARGO/bin:$PATH"
fi
if command -v rsenv >/dev/null 2>&1; then
    eval "$(rsenv init -)"
fi

if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi

# sqlite3
# export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export PATH="/usr/local/opt/openssl/bin:$PATH"

# iterm2 integration
if [[ "$(uname)" == "Darwin" ]]; then
    source ~/.iterm2_shell_integration.`basename $SHELL`
fi
