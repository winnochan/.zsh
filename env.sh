export LC_ALL="en_US.UTF-8"
export EDITOR="emacsclient -t -a vim"
export SPACESHIP_TIME_SHOW=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# Autojump
export AUTOJUMP="$HOME/.autojump"
export PATH="$AUTOJUMP/bin:$PATH"
if command -v autojump >/dev/null 2>&1; then
    source $AUTOJUMP/etc/profile.d/autojump.sh
fi

# GoEnv
export GOENV="$HOME/.goenv"
export GOPATH="$HOME/.gopath"
export PATH="$GOENV/bin:$GOPATH/bin:$PATH"
if command -v goenv >/dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# JEnv
export JENV="$HOME/.jenv"
export PATH="$JENV/bin:$PATH"
if command -v jenv >/dev/null 2>&1; then
    eval "$(jenv init -)"
fi

# PyEnv
export PYENV="$HOME/.pyenv"
export PATH="$PYENV/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# RbEnv
export RBENV="$HOME/.rbenv"
export PATH="$PYENV/bin:$PATH"
if command -v rbenv >/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

# RsEnv
export RSENV="$HOME/.rsenv"
export CARGO="$HOME/.cargo"
export PATH="$RSENV/bin:$CARGO/bin:$PATH"
if command -v rsenv >/dev/null 2>&1; then
    eval "$(rsenv init -)"
fi

if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi

# sqlite3
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

# iterm2 integration
source ~/.iterm2_shell_integration.`basename $SHELL`
