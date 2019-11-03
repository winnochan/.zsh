file_dir=$(cd $(dirname "$0"); pwd)

# check rust
# if [ ! -d "$HOME/.rustup" ]; then
#     curl https://sh.rustup.rs -sSf | sh
# fi

echo "source $file_dir/.zshrc" > $HOME/.zshrc
echo "source $file_dir/.zshenv" > $HOME/.zshenv
