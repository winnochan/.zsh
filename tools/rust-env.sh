if [ ! -d $HOME/.rustup ]; then
  # if ! command -v rustup >/dev/null 2>&1; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

if command -v rustup >/dev/null 2>&1; then
  rustup component add llvm-tools-preview rls rust-analysis rust-src rustfmt clippy
elif [ -f $ZSH_DIR/plugins/rust.plugin.zsh ]; then
  source $ZSH_DIR/plugins/rust.plugin.zsh
  rustup component add llvm-tools-preview rls rust-analysis rust-src rustfmt clippy
fi

if command -v cargo >/dev/null 2>&1; then
  cargo install cargo-edit cargo-audit cargo-outdated
fi
