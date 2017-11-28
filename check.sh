current_dir=$(cd $(dirname "$0"); pwd)

# check autojump
if [ ! -d "$HOME/.autojump" ]; then
    git clone https://github.com/wting/autojump.git $current_dir/autojump
    cd $current_dir/autojump && python install.py && cd ..
    rm -rf $current_dir/autojump
fi

# check goenv
if [ ! -d "$HOME/.goenv" ]; then
    git clone https://github.com/syndbg/goenv.git $HOME/.goenv
fi

# check nodenv
if [ ! -d "$HOME/.nodenv" ]; then
    git clone https://github.com/nodenv/nodenv.git ~/.nodenv
    cd $HOME/.nodenv && src/configure && make -C src
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

if [ ! -d "$HOME/.zprezto" ]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git $HOME/.zprezto
fi

echo "source $current_dir/login.sh" > $HOME/.zlogin
echo "source $current_dir/logout.sh" > $HOME/.zlogout
echo "source $HOME/.zprezto/init.zsh" > $HOME/.zshrc
echo "source $current_dir/alias.sh" >> $HOME/.zshrc
echo "source $current_dir/env.sh" > $HOME/.zprofile
echo "source $HOME/.zprofile" > $HOME/.zshenv
echo "source $current_dir/prezto.sh" > $HOME/.zpreztorc
