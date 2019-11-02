cargo_env=$HOME/.cargo/env
if [ -f $cargo_env ]; then
    source $cargo_env
fi

if command -v rustup >/dev/null 2>&1; then
    export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src

    export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
fi
