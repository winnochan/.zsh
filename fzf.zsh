# Setup fzf
# ---------
if [[ ! "$PATH" == */home/winnochan/.linuxbrew/opt/fzf/bin* ]]; then
  export PATH="$PATH:/home/winnochan/.linuxbrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/winnochan/.linuxbrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/winnochan/.linuxbrew/opt/fzf/shell/key-bindings.zsh"

