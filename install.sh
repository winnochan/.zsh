current_dir=$(cd "$(dirname "$0")"; pwd)
plugins_dir=$current_dir/plugins

antigen_url="https://raw.githubusercontent.com/zsh-users/antigen/develop/bin/antigen.zsh"
if [ ! -f "$current_dir/antigen.zsh" ]; then
    echo "install antigen"
    curl -fsSL $antigen_url > $current_dir/antigen.zsh
fi

if [ ! -d "$HOME/.autojump" ]; then
    echo "install autojump"
    git clone git://github.com/joelthelion/autojump.git
    cd autojump
    python install.py
    cd ../
    rm -rf autojump/
fi

if [ ! -d "$HOME/.emacs.d" ]; then
    echo "install spacemacs"
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d -b develop
fi

if [ ! -d "$HOME/.spacemacs.d" ]; then
    echo "install spacemacs"
    git clone git@github.com:wow4me/.spacemacs.d.git
fi

if [ ! -d "$HOME/.goenv" ]; then
    echo "install goenv"
    git clone https://github.com/syndbg/goenv.git ~/.goenv
fi

if [ ! -d "$HOME/.jenv" ]; then
    echo "install jenv"
    git clone https://github.com/gcuisinier/jenv.git ~/.jenv
fi

if [ ! -d "$HOME/.pyenv" ]; then
    echo "install pyenv"
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
    curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
fi

if [ ! -d "$HOME/.rbenv" ]; then
    echo "install rbenv"
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

echo "source $current_dir/zshrc.sh" > $HOME/.zshrc
echo "source $current_dir/env.sh" >> $HOME/.zshrc
echo "source $current_dir/alias.sh" >> $HOME/.zshrc
echo "fpath+=$current_dir" >> $HOME/.zshrc
