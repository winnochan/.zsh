export LC_ALL="en_US.UTF-8"
export EDITOR="emacsclient -t -a vim"
export SPACESHIP_TIME_SHOW=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export GTAGSLABEL=pygments
# export ALL_PROXY=socks5://127.0.0.1:1086

# GoEnv
# GOENV="$HOME/.goenv"
# GOPATH="$HOME/.gopath"
# if [ -d "$GOENV" ]; then
#     export PATH="$GOENV/bin:$GOPATH/bin:$PATH"
# fi
# if command -v goenv >/dev/null 2>&1; then
#     eval "$(goenv init -)"
# fi

# JAVA_HOME
if [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

CARGO_ENV="$HOME/.cargo/env"
if [ -f "$CARGO_ENV" ]; then
    source $CARGO_ENV
fi

if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi
