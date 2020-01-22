file_dir=$(cd $(dirname "$0"); pwd)

# check rust
# if [ ! -d "$HOME/.rustup" ]; then
#     curl https://sh.rustup.rs -sSf | sh
# fi

echo "export all_proxy=http://127.0.0.1:1087" > $HOME/.zshenv
echo "source $file_dir/.zshenv" >> $HOME/.zshenv

echo "source $file_dir/.zshrc" > $HOME/.zshrc
echo "unset all_proxy" >> $HOME/.zshrc
