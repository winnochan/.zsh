cargo_env=$HOME/.cargo/env
if [ -f $cargo_env ]; then
    source $cargo_env
fi

if command -v rustup >/dev/null 2>&1; then
    rust_cache=$ZSH_CACHE/rust
    if [ ! -d $rust_cache ]; then
        mkdir -p $rust_cache
    fi

    if [ "$RUST_SYSROOT" = "" ]; then
      if [ ! -f $rust_cache/rust_sysroot.zsh ]; then
        __rust_sysroot=$(rustc --print sysroot)
        if [ "${__rust_sysroot}" != "" ]; then
          echo "export RUST_SYSROOT=${__rust_sysroot}" > $rust_cache/rust_sysroot.zsh
        fi
        unset __rust_sysroot
      fi
      if [ -f $rust_cache/rust_sysroot.zsh ]; then
        source $rust_cache/rust_sysroot.zsh
      fi
    fi

    export RUSTUP_DIST_SERVER=https://mirror.sjtu.edu.cn/rust-static
    export RUSTUP_UPDATE_ROOT=https://mirror.sjtu.edu.cn/rust-static/rustup

    if [ "$RUST_SYSROOT" != "" ]; then
      export RUST_SRC_PATH=$RUST_SYSROOT/lib/rustlib/src/rust/library
      fpath=($RUST_SYSROOT/share/zsh/site-functions $fpath)
    fi
    # export CARGO_HTTP_MULTIPLEXING=false

    if [ ! -L $HOME/.cargo/config.toml ]; then
      if [ -e $HOME/.cargo/config.toml ]; then
        rm -rf $HOME/.cargo/config.toml
      fi
      ln -s $ZSH_DIR/config/cargo.toml $HOME/.cargo/config.toml
    fi
fi
