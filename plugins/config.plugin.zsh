if [ ! -e ~/.config ]; then
  mkdir ~/.config
fi

# if [ ! -L ~/.config/ulauncher ]; then
#   if [ -e ~/.config/ulauncher ]; then
#     rm -rf ~/.config/ulauncher
#   fi
#   ln -s $ZSH_DIR/config/ulauncher ~/.config/ulauncher
#   echo 'link ulauncher config'
# fi

# if [ ! -L ~/.config/alacritty ]; then
#   if [ -e ~/.config/alacritty ]; then
#     rm -rf ~/.config/alacritty
#   fi
#   ln -s $ZSH_DIR/config/alacritty ~/.config/alacritty
#   echo 'link alacritty config'
# fi

if [ "$ZSH_SYS" = "Linux" ]; then
  if [ ! -L ~/.mongoshrc.js ]; then
    if [ -e ~/.mongoshrc.js ]; then
      rm -rf ~/.mongoshrc.js
    fi
    ln -s $ZSH_DIR/config/mongoshrc.js ~/.mongoshrc.js
    echo 'link mongoshrc config'
  fi

  if [ ! -L ~/.config/terminator ]; then
    if [ -e ~/.config/terminator ]; then
      rm -rf ~/.config/terminator
    fi
    ln -s $ZSH_DIR/config/terminator ~/.config/terminator
    echo 'link terminator config'
  fi

  if [ ! -L ~/.xprofile ]; then
    if [ -e ~/.xprofile ]; then
      rm -rf ~/.xprofile
    fi
    ln -s $ZSH_DIR/config/xprofile ~/.xprofile
    echo 'link xprofile config'
  fi

  if command -v xmodmap >/dev/null 2>&1; then
    if [ ! -L ~/.Xmodmap ]; then
      if [ -e ~/.Xmodmap ]; then
        rm -rf ~/.Xmodmap
      fi
      ln -s $ZSH_DIR/config/Xmodmap ~/.Xmodmap
      echo 'link xmodmap'
    fi
  fi
fi

# __wezterm_dir=~/.config/wezterm
# if [ ! -L $__wezterm_dir ]; then
#   if [ -e $__wezterm_dir ]; then
#     rm -rf $__wezterm_dir
#   fi
#   ln -s $ZSH_DIR/config/wezterm $__wezterm_dir
#   echo 'link wezterm config'
# fi
# unset __wezterm_dir

if [ ! -L ~/.pip ]; then
  if [ -e ~/.pip ]; then
    rm -rf ~/.pip
  fi
  ln -s $ZSH_DIR/config/pip ~/.pip
  echo 'link pip config'
fi

if [ ! -L ~/.condarc ]; then
  if [ -e ~/.condarc ]; then
    rm -rf ~/.condarc
  fi
  ln -s $ZSH_DIR/config/condarc ~/.condarc
  echo 'link condarc'
fi


export ASDF_GOLANG_DEFAULT_PACKAGES_FILE=$ZSH_DIR/config/asdf/golang-default-packages
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE=$ZSH_DIR/config/asdf/python-default-packages

if [ ! -L ~/.npmrc ]; then
  if [ -e ~/.npmrc ]; then
    rm -rf ~/.npmrc
  fi
  ln -s $ZSH_DIR/config/npmrc ~/.npmrc
  echo 'link npmrc'
fi

if [ ! -L ~/.default-npm-packages ]; then
  if [ -e ~/.default-npm-packages ]; then
    rm -rf ~/.default-npm-packages
  fi
  ln -s $ZSH_DIR/config/default-npm-packages ~/.default-npm-packages
  echo 'link default-npm-packages'
fi
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/
