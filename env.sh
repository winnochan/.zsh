export LC_ALL="en_US.UTF-8"
export EDITOR="emacsclient -t -a vim"
export SPACESHIP_TIME_SHOW=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export GTAGSLABEL=pygments
# export ALL_PROXY=socks5://127.0.0.1:1086

current_dir=$(cd "$(dirname "$0")"; pwd)

# autojump
if [ ! -d "$HOME/.autojump" ]; then
    cd $current_dir/autojump && python install.py && cd ..
fi
autojump_sh="$HOME/.autojump/etc/profile.d/autojump.sh"
[[ -s $autojump_sh ]] && source $autojump_sh

# goenv
GOENV="$HOME/.goenv"
GOPATH="$HOME/.gopath"
if [ -d "$GOENV" ]; then
    export PATH="$GOENV/bin:$PATH"
fi
if [ -d "$GOPATH" ]; then
    export PATH="$GOPATH/bin:$PATH"
fi
if command -v goenv >/dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# nenv
NENV="$HOME/.nenv"
if [ -d "$NENV" ]; then
    export PATH="$NENV/bin:$PATH"
fi
if command -v nenv >/dev/null 2>&1; then
    eval "$(nenv init -)"
fi

# java
if [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

# pyenv
pyenv_root="$HOME/.pyenv"
if [ ! -d "$pyenv_root" ]; then
    git clone https://github.com/pyenv/pyenv.git $pyenv_root
fi
if [ ! -d "$pyenv_root/plugins/pyenv-virtualenv" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git $pyenv_root/plugins/pyenv-virtualenv
fi
if [ ! -d "$pyenv_root/plugins/pyenv-virtualenvwrapper" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $pyenv_root/plugins/pyenv-virtualenvwrapper
fi
if [ ! -d "$pyenv_root/plugins/pyenv-update" ]; then
    git clone git://github.com/pyenv/pyenv-update.git $pyenv_root/plugins/pyenv-update
fi
if [ ! -d "$pyenv_root/plugins/pyenv-doctor" ]; then
    git clone git://github.com/yyuu/pyenv-doctor.git $pyenv_root/plugins/pyenv-doctor
fi
export PATH="$PATH:$pyenv_root/bin"
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

CARGO_ENV="$HOME/.cargo/env"
if [ -f "$CARGO_ENV" ]; then
    source $CARGO_ENV
fi

if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi
