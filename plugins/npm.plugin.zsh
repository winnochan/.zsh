if [ ! -L $HOME/.npmrc ]; then
  if [ -e $HOME/.npmrc ]; then
    rm -rf $HOME/.npmrc
  fi
  ln -s $ZSH_DIR/config/npmrc $HOME/.npmrc
  echo 'link npmrc'
fi
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/
