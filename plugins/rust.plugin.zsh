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

    export RUST_SRC_PATH=$RUST_SYSROOT/lib/rustlib/src/rust/src

    export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
fi
