if [ "$USER" = "winnochan" ]; then
  if [ ! -L $HOME/.gitconfig ]; then
    if [ -e $HOME/.gitconfig ]; then
      rm -rf $HOME/.gitconfig
    fi
    ln -s $ZSH_DIR/config/gitconfig $HOME/.gitconfig
    echo 'link git config'
  fi

  if [ ! -L $HOME/.gitattributes ]; then
    if [ -e $HOME/.gitattributes ]; then
      rm -rf $HOME/.gitattributes
    fi
    ln -s $ZSH_DIR/config/gitattributes $HOME/.gitattributes
    echo 'link git attributes'
  fi
fi
