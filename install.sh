file_dir=$(cd $(dirname "$0"); pwd)

# check autojump
if [ ! -d "$HOME/.autojump" ]; then
    git clone https://github.com/wting/autojump.git $file_dir/autojump
    cd $file_dir/autojump && python install.py && cd ..
    rm -rf $file_dir/autojump
fi

# check goenv
if [ ! -d "$HOME/.goenv" ]; then
    git clone https://github.com/syndbg/goenv.git $HOME/.goenv
fi

# check nodenv
nodenv_root="$HOME/.nodenv"
if [ ! -d "$nodenv_root" ]; then
    git clone https://github.com/nodenv/nodenv.git $nodenv_root
    git clone https://github.com/nodenv/node-build.git $nodenv_root/plugins/node-build
    git clone https://github.com/nodenv/nodenv-update.git $nodenv_root/plugins/nodenv-update
    current_dir="$(pwd)"
    cd $nodenv_root && src/configure && make -C src
    cd $current_dir
fi

# check pyenv
pyenv_root="$HOME/.pyenv"
if [ ! -d "$pyenv_root" ]; then
    git clone https://github.com/pyenv/pyenv.git $pyenv_root
fi
if [ ! -d "$pyenv_root/plugins/pyenv-virtualenv" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git $pyenv_root/plugins/pyenv-virtualenv
fi
if [ ! -d "$pyenv_root/plugins/pyenv-virtualenvwrapper" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $pyenv_root/plugins/pyenv-virtualenvwrapper
fi
if [ ! -d "$pyenv_root/plugins/pyenv-update" ]; then
    git clone git://github.com/pyenv/pyenv-update.git $pyenv_root/plugins/pyenv-update
fi
if [ ! -d "$pyenv_root/plugins/pyenv-doctor" ]; then
    git clone git://github.com/yyuu/pyenv-doctor.git $pyenv_root/plugins/pyenv-doctor
fi

# check rust
if [ ! -d "$HOME/.rustup" ]; then
    curl https://sh.rustup.rs -sSf | sh
fi

# check scala
if [ ! -d "$HOME/.scalaenv" ]; then
    git clone git://github.com/scalaenv/scalaenv.git $HOME/.scalaenv
fi

echo "source $file_dir/.zshrc" > $HOME/.zshrc
echo "source $file_dir/.zshenv" > $HOME/.zshenv
