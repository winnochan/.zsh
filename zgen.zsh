export ZGEN_DIR=${ZDOTDIR:-$ZSH_DIR}/.zgen
export ZGEN_RESET_ON_CHANGE=($ZSH_DIR/zgen.zsh)
export ZGEN_AUTOLOAD_COMPINIT=0
export ZGEN_OH_MY_ZSH_REPO=https://gitee.com/mirrors/oh-my-zsh.git
# export ZGEN_OH_MY_ZSH_REPO=https://git.sjtu.edu.cn/sjtug/ohmyzsh.git

source $ZGEN_DIR/zgen.zsh

if ! zgen saved; then

  # from oh-my-zsh
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/alias-finder
  # zgen oh-my-zsh plugins/autoenv
  # zgen oh-my-zsh plugins/cargo
  # zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/extract
  zgen oh-my-zsh plugins/fasd
  zgen oh-my-zsh plugins/git
  # zgen oh-my-zsh plugins/keychain
  zgen oh-my-zsh plugins/last-working-dir
  # zgen oh-my-zsh plugins/per-directory-history
  zgen oh-my-zsh plugins/pip
  # zgen oh-my-zsh plugins/pipenv

  # from github
  # zgen load https://gitee.com/winnochan/alias-tips.git
  # zgen load esc/conda-zsh-completion
  zgen load https://gitee.com/mirrors/fzf.git shell
  zgen load https://gitee.com/winnochan/fzf-fasd.git

  # theme
  zgen load https://gitee.com/winnochan/blox-zsh-theme.git

  # from zsh-user
  zgen load https://gitee.com/winnochan/zsh-autosuggestions.git
  zgen load https://gitee.com/winnochan/zsh-completions.git

  zgen load https://gitee.com/winnochan/zsh-autopair.git
  zgen load https://gitee.com/winnochan/fast-syntax-highlighting.git
  # zgen load https://gitee.com/winnochan/zsh-history-substring-search.git

  # generate the init script from plugins above
  zgen save
fi

fpath=($ZSH_DIR/completions $fpath)
# source $ZSH_DIR/plugins/keychain.plugin.zsh
