cargo_env=$HOME/.cargo/env
if [ -f $cargo_env ]; then
    source $cargo_env
fi

if command -v rustup >/dev/null 2>&1; then
    rust_cache=$ZSH_CACHE/rust
    if [ ! -d $rust_cache ]; then
        mkdir -p $rust_cache
    fi

    if [ ! -f $rust_cache/rust_sysroot.zsh ]; then
        echo "export RUST_SYSROOT=$(rustc --print sysroot)" > $rust_cache/rust_sysroot.zsh
    fi
    source $rust_cache/rust_sysroot.zsh

    export RUST_SRC_PATH=$RUST_SYSROOT/lib/rustlib/src/rust/library

    export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
    export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

    # export CARGO_HTTP_MULTIPLEXING=false

    fpath=($RUST_SYSROOT/share/zsh/site-functions $fpath)

    if [ ! -L $HOME/.cargo/config.toml ]; then
      if [ -e $HOME/.cargo/config.toml ]; then
        rm -rf $HOME/.cargo/config.toml
      fi
      ln -s $ZSH_DIR/config/cargo.toml $HOME/.cargo/config.toml
    fi
fi
