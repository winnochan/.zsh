if ! command -v rustup >/dev/null 2>&1; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

rustup component add cargo clippy llvm-tools-preview rls rust-analysis rust-docs rust-src rust-std rustc rustfmt
