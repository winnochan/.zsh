__wezterm_dir=$HOME/.config/wezterm
if [ ! -L $__wezterm_dir ]; then
  if [ -e $__wezterm_dir ]; then
    rm -rf $__wezterm_dir
  fi
  ln -s $ZSH_DIR/config/wezterm $__wezterm_dir
  echo 'link wezterm config'
fi

unset __wezterm_dir
