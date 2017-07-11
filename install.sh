cur_dirname=$(cd "$(dirname "$0")"; pwd)

antigen_url="https://raw.githubusercontent.com/zsh-users/antigen/develop/bin/antigen.zsh"
curl -fsSL $antigen_url > $cur_dirname/antigen.zsh

echo "source $cur_dirname/zshrc.sh" >> $HOME/.zshrc
