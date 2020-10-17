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

    export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup

    # export RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
    # export RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup
    # export CARGO_REGISTRIES_MY_REGISTRY_INDEX=https://mirrors.sjtug.sjtu.edu.cn/git/crates.io-index/

    if [ ! -f $HOME/.cargo/config.toml ]; then
        echo '[source]\n\n[source.mirror]\nregistry = "https://mirrors.sjtug.sjtu.edu.cn/git/crates.io-index/"\n\n[source.crates-io]\nreplace-with = "mirror"' > $HOME/.cargo/config.toml
    fi
fi
