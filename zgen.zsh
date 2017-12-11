export ZGEN_RESET_ON_CHANGE=($ZSH_HOME/zgen.zsh)
export ZGEN_DIR=$ZSH_HOME/zgen
source $ZGEN_DIR/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then

    # from oh-my-zsh
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/last-working-dir
    zgen oh-my-zsh plugins/per-directory-history
    zgen oh-my-zsh plugins/tig

    # from github
    # zgen load djui/alias-tips
    # zgen load unixorn/autoupdate-zgen
    # zgen load supercrabtree/k
    # zgen load RobSis/zsh-completion-generator
    zgen load molovo/tipz

    # theme
    zgen load mafredri/zsh-async
    # zgen load sindresorhus/pure
    zgen load yardnsm/blox-zsh-theme

    # from zsh-user
    zgen load zsh-users/zaw
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions
    # zgen load zsh-users/zsh-syntax-highlighting
    zgen load b4b4r07/enhancd
    zgen load hlissner/zsh-autopair
    zgen load zdharma/fast-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search

    # generate the init script from plugins above
    zgen save
fi

# autoload -U compinit && compinit

# # custom config
source $ZSH_HOME/alias.zsh
source $ZSH_HOME/custom.zsh
source $ZSH_HOME/fasd.zsh
