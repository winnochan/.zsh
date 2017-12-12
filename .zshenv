# autojump
# autojump_sh="$HOME/.autojump/etc/profile.d/autojump.sh"
# [[ -s $autojump_sh ]] && source $autojump_sh

# goenv
export GOPATH="$HOME/.gopath"
export PATH="$HOME/.goenv/bin:$GOPATH/bin:$PATH"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"

# java
if [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"

# scalaenv
export PATH="$HOME/.scalaenv/bin:$PATH"

# rust cargo
cargo_env="$HOME/.cargo/env"
if [ -f "$cargo_env" ]; then
    source $cargo_env
fi
# rustup
if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi
