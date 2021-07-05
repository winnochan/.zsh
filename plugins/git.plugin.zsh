if [ "$USER" = "winnochan" ]; then
  if [ ! -L $HOME/.gitconfig ]; then
    if [ -e $HOME/.gitconfig ]; then
      rm -rf $HOME/.gitconfig
    fi
    ln -s $ZSH_DIR/config/gitconfig $HOME/.gitconfig
    echo 'link git config'
  fi
fi
