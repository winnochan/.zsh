if [ "$(uname)" = "Darwin" ]; then
    # Setup fzf
    # ---------
    if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
        export PATH="$PATH:/usr/local/opt/fzf/bin"
    fi

    # Auto-completion
    # ---------------
    [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

    # Key bindings
    # ------------
    source "/usr/local/opt/fzf/shell/key-bindings.zsh"
elif [ "$(uname)" = "Linux" ]; then
    # Setup fzf
    # ---------
    if [[ ! "$PATH" == */home/winnochan/.linuxbrew/opt/fzf/bin* ]]; then
        export PATH="$PATH:$HOME/.linuxbrew/opt/fzf/bin"
    fi

    # Auto-completion
    # ---------------
    [[ $- == *i* ]] && source "$HOME/.linuxbrew/opt/fzf/shell/completion.zsh" 2> /dev/null

    # Key bindings
    # ------------
    source "$HOME/.linuxbrew/opt/fzf/shell/key-bindings.zsh"
fi
