export LC_ALL="en_US.UTF-8"
export EDITOR="emacsclient -t -a vim"
export SPACESHIP_TIME_SHOW=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export GTAGSLABEL=pygments

autojump_sh="$HOME/.autojump/etc/profile.d/autojump.sh"
[[ -s $autojump_sh ]] && source $autojump_sh

# goenv
export GOPATH="$HOME/.gopath"
export PATH="$PATH:$HOME/.goenv/bin:$GOPATH/bin"
if command -v goenv >/dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# nodenv
export PATH="$PATH:$HOME/.nodenv/bin"
if command -v nodenv >/dev/null 2>&1; then
    eval "$(nodenv init -)"
fi

# java
if [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

# pyenv
export PATH="$PATH:$HOME/.pyenv/bin"
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# rust cargo
cargo_env="$HOME/.cargo/env"
if [ -f "$cargo_env" ]; then
    source $cargo_env
fi
if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi
