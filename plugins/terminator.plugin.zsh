if [ ! -L $HOME/.config/terminator ]; then
    if [ -e $HOME/.config/terminator ]; then
        rm -rf $HOME/.config/terminator
    fi
    ln -s $ZSH_DIR/config/terminator $HOME/.config/terminator
fi
