if [ ! -L $HOME/.Xmodmap ]; then
  if [ -e $HOME/.Xmodmap ]; then
    rm -rf $HOME/.Xmodmap
  fi
  ln -s $ZSH_DIR/config/Xmodmap $HOME/.Xmodmap
  echo 'link xmodmap'
fi
