export ZGEN_DIR=${ZDOTDIR:-$ZSH_DIR}/.zgen
export ZGEN_RESET_ON_CHANGE=($ZSH_DIR/zgen.zsh)
export ZGEN_AUTOLOAD_COMPINIT=0

source $ZGEN_DIR/zgen.zsh

# export ZSH_FZY_FLAGS=( -l 25 -s -j 4 )

# if the init scipt doesn't exist
zstyle :omz:plugins:ssh-agent agent-forwarding on

if ! zgen saved; then

    # from oh-my-zsh
    zgen oh-my-zsh
    # zgen oh-my-zsh plugins/autoenv
    # zgen oh-my-zsh plugins/battery
    zgen oh-my-zsh plugins/cargo
    # zgen oh-my-zsh plugins/colored-man-pages
    # zgen oh-my-zsh plugins/cp
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/fasd
    # zgen oh-my-zsh plugins/fzf
    zgen oh-my-zsh plugins/git
    # zgen oh-my-zsh plugins/gitfast
    # zgen oh-my-zsh plugins/gitignore
    # zgen oh-my-zsh plugins/gulp
    # zgen oh-my-zsh plugins/keychain
    zgen oh-my-zsh plugins/last-working-dir
    # zgen oh-my-zsh plugins/mosh
    # zgen oh-my-zsh plugins/ng
    # zgen oh-my-zsh plugins/nvm
    zgen oh-my-zsh plugins/per-directory-history
    # zgen oh-my-zsh plugins/pip
    # zgen oh-my-zsh plugins/pipenv
    # zgen oh-my-zsh plugins/rsync
    # zgen oh-my-zsh plugins/rust
    # zgen oh-my-zsh plugins/ssh-agent
    # zgen oh-my-zsh plugins/systemd
    # zgen oh-my-zsh plugins/tig
    # zgen oh-my-zsh plugins/tmux
    # zgen oh-my-zsh plugins/vagrant
    # zgen oh-my-zsh plugins/vagrant-prompt

    # from github
    # zgen load unixorn/autoupdate-zgen
    # zgen load RobSis/zsh-completion-generator
    zgen load djui/alias-tips
    # zgen load avivl/gcloud-project
    # zgen load littleq0903/gcloud-zsh-completion
    # zgen load mdumitru/git-aliases
    # zgen load wfxr/forgit
    # zgen load ytet5uy4/fzf-widgets

    # theme
    zgen load mafredri/zsh-async
    # zgen load sindresorhus/pure
    zgen load yardnsm/blox-zsh-theme
    # zgen load dracula/dracula-theme zsh/dracula.zsh-theme
    # zgen load seletskiy/zsh-fuzzy-search-and-edit
    # zgen load urbainvaes/fzf-marks

    # from zsh-user
    # zgen load zsh-users/zaw
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions

    zgen load hlissner/zsh-autopair
    # zgen load zdharma/fast-syntax-highlighting
    zgen load zsh-users/zsh-syntax-highlighting
    # zgen load zsh-users/zsh-history-substring-search

    # generate the init script from plugins above
    zgen save
fi
