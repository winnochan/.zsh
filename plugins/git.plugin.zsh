if [ "$USER" = "winnochan" ]; then
  if [ ! -L ~/.gitconfig ]; then
    if [ -e ~/.gitconfig ]; then
      rm -rf ~/.gitconfig
    fi
    ln -s $ZSH_DIR/config/gitconfig ~/.gitconfig
    echo 'link git config'
  fi

  if [ ! -L ~/.gitattributes ]; then
    if [ -e ~/.gitattributes ]; then
      rm -rf ~/.gitattributes
    fi
    ln -s $ZSH_DIR/config/gitattributes ~/.gitattributes
    echo 'link git attributes'
  fi
fi

# export GCM_CREDENTIAL_STORE=gpg
export GCM_CREDENTIAL_STORE=secretservice
