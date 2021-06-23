if [ ! -f ~/.gitconfig ]; then

  git config --global user.name WinnoChan
  git config --global user.email 'winnochan@icloud.com'

  if ! command -v ksshaskpass >/dev/null 2>&1; then
    git config --global credential.helper 'cache --timeout=604800'
  fi

fi

if command -v ksshaskpass >/dev/null 2>&1; then
  export GIT_ASKPASS=`which ksshaskpass`
fi
