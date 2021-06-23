if [ "$(git config --global user.name)" != 'WinnoChan' ]; then
  git config --global user.name WinnoChan
fi

if [ "$(git config --global user.email)" != 'winnochan@icloud.com' ]; then
  git config --global user.email 'winnochan@icloud.com'
fi

export GIT_ASKPASS=`which ksshaskpass`
