if [ ! -L $HOME/.npmrc ]; then
  if [ -e $HOME/.npmrc ]; then
    rm -rf $HOME/.npmrc
  fi
  ln -s $ZSH_DIR/config/npmrc $HOME/.npmrc
  echo 'link npmrc'
fi
