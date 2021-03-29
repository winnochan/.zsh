if [ ! -L $HOME/.pip ]; then
  if [ -e $HOME/.pip ]; then
    rm -rf $HOME/.pip
  fi
  ln -s $ZSH_DIR/config/pip $HOME/.pip
  echo 'link pip config'
fi

export ASDF_PYTHON_DEFAULT_PACKAGES_FILE=$ZSH_DIR/config/pip/default-packages
