current_dir=$(cd "$(dirname "$0")"; pwd)
plugins_dir=$current_dir/plugins

antigen_url="https://raw.githubusercontent.com/zsh-users/antigen/develop/bin/antigen.zsh"
curl -fsSL $antigen_url > $current_dir/antigen.zsh

echo "source $current_dir/zshrc.sh" > $HOME/.zshrc
echo "source $current_dir/env.sh" >> $HOME/.zshrc
echo "source $current_dir/alias.sh" >> $HOME/.zshrc
