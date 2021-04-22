if [ ! -e ~/.config ]; then
  mkdir ~/.config
fi

if [ ! -L $HOME/.config/ulauncher ]; then
  if [ -e $HOME/.config/ulauncher ]; then
    rm -rf $HOME/.config/ulauncher
  fi
  ln -s $ZSH_DIR/config/ulauncher $HOME/.config/ulauncher
  echo 'link ulauncher config'
fi

if [ ! -L $HOME/.config/terminator ]; then
  if [ -e $HOME/.config/terminator ]; then
    rm -rf $HOME/.config/terminator
  fi
  ln -s $ZSH_DIR/config/terminator $HOME/.config/terminator
  echo 'link terminator config'
fi

if command -v xmodmap >/dev/null 2>&1; then
  if [ ! -L $HOME/.Xmodmap ]; then
    if [ -e $HOME/.Xmodmap ]; then
      rm -rf $HOME/.Xmodmap
    fi
    ln -s $ZSH_DIR/config/Xmodmap $HOME/.Xmodmap
    echo 'link xmodmap'
  fi
fi

__wezterm_dir=$HOME/.config/wezterm
if [ ! -L $__wezterm_dir ]; then
  if [ -e $__wezterm_dir ]; then
    rm -rf $__wezterm_dir
  fi
  ln -s $ZSH_DIR/config/wezterm $__wezterm_dir
  echo 'link wezterm config'
fi
unset __wezterm_dir

if [ ! -L $HOME/.pip ]; then
  if [ -e $HOME/.pip ]; then
    rm -rf $HOME/.pip
  fi
  ln -s $ZSH_DIR/config/pip $HOME/.pip
  echo 'link pip config'
fi

if [ ! -L $HOME/.condarc ]; then
  if [ -e $HOME/.condarc ]; then
    rm -rf $HOME/.condarc
  fi
  ln -s $ZSH_DIR/config/condarc $HOME/.condarc
  echo 'link condarc'
fi


export ASDF_PYTHON_DEFAULT_PACKAGES_FILE=$ZSH_DIR/config/pip/default-packages

if [ ! -L $HOME/.npmrc ]; then
  if [ -e $HOME/.npmrc ]; then
    rm -rf $HOME/.npmrc
  fi
  ln -s $ZSH_DIR/config/npmrc $HOME/.npmrc
  echo 'link npmrc'
fi

if [ ! -L $HOME/.default-npm-packages ]; then
  if [ -e $HOME/.default-npm-packages ]; then
    rm -rf $HOME/.default-npm-packages
  fi
  ln -s $ZSH_DIR/config/default-npm-packages $HOME/.default-npm-packages
  echo 'link default-npm-packages'
fi
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/
