# if [ ! -f $HOME/.config/terminator/config ]; then
#     if [ ! -d $HOME/.config/terminator ]; then
#         mkdir -p $HOME/.config/terminator
#     fi
#     touch $HOME/.config/terminator/config
# fi

# if [ "$(diff ~/.config/terminator/config ~/.zsh/config/terminator.config)" != '' ]; then
#     rm $HOME/.config/terminator/config
#     ln -s $ZSH_DIR/config/terminator.config $HOME/.config/terminator/config
# fi
