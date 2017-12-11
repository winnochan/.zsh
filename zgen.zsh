export ZGEN_DIR=${ZDOTDIR:-ZSH_DIR}/.zgen
export ZGEN_RESET_ON_CHANGE=($ZSH_DIR/zgen.zsh)

source $ZGEN_DIR/zgen.zsh

export ZSH_FZY_FLAGS=( -l 25 -s -j 4 )

# if the init scipt doesn't exist
if ! zgen saved; then

    # from oh-my-zsh
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/colored-man-pages
    # zgen oh-my-zsh plugins/fzf-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/last-working-dir
    zgen oh-my-zsh plugins/per-directory-history
    zgen oh-my-zsh plugins/tig
    # zgen oh-my-zsh plugins/z

    # from github
    # zgen load djui/alias-tips
    # zgen load unixorn/autoupdate-zgen
    # zgen load supercrabtree/k
    # zgen load RobSis/zsh-completion-generator
    zgen load molovo/tipz
    # zgen load ytet5uy4/fzf-widgets

    # theme
    zgen load mafredri/zsh-async
    # zgen load sindresorhus/pure
    zgen load yardnsm/blox-zsh-theme
    zgen load seletskiy/zsh-fuzzy-search-and-edit
    # zgen load urbainvaes/fzf-marks

    # from zsh-user
    zgen load zsh-users/zaw
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions
    # zgen load zsh-users/zsh-syntax-highlighting
    zgen load b4b4r07/enhancd
    # zgen load changyuheng/fz fz.plugin.zsh
    zgen load hlissner/zsh-autopair
    zgen load zdharma/fast-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search

    # generate the init script from plugins above
    zgen save
fi
