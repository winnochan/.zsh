if [ "$ZSH_SYS" = "Darwin" ]; then
  export PATH=$ZSH_DIR/mbin/$(uname -m):$PATH
elif [ "$ZSH_SYS" = "Linux" ]; then
  export PATH=$ZSH_DIR/lbin:$PATH
fi
