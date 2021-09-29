export ZGENOM_DIR=${ZDOTDIR:-$ZSH_DIR}/.zgenom
export ZGEN_RESET_ON_CHANGE=($ZSH_DIR/zgenom.zsh)
export ZGEN_AUTOLOAD_COMPINIT=0
export ZGEN_OH_MY_ZSH_REPO=https://gitee.com/mirrors/oh-my-zsh.git
# export ZGENOM_OH_MY_ZSH_REPO=https://git.sjtu.edu.cn/sjtug/ohmyzsh.git

source $ZGENOM_DIR/zgenom.zsh

if ! zgenom saved; then

  # from ohmyzsh
  zgenom ohmyzsh
  zgenom ohmyzsh plugins/alias-finder
  # zgenom ohmyzsh plugins/autoenv
  # zgenom ohmyzsh plugins/cargo
  # zgenom ohmyzsh plugins/colored-man-pages
  zgenom ohmyzsh plugins/extract
  zgenom ohmyzsh plugins/fasd
  zgenom ohmyzsh plugins/git
  # zgenom ohmyzsh plugins/keychain
  zgenom ohmyzsh plugins/last-working-dir
  # zgenom ohmyzsh plugins/per-directory-history
  zgenom ohmyzsh plugins/pip
  # zgenom ohmyzsh plugins/pipenv
  # zgenom ohmyzsh plugins/rustup

  # from github
  # zgenom load https://gitee.com/winnochan/alias-tips.git
  # zgenom load esc/conda-zsh-completion
  zgenom load https://gitee.com/mirrors/fzf.git shell
  zgenom load https://gitee.com/winnochan/fzf-fasd.git

  # theme
  zgenom load https://gitee.com/winnochan/blox-zsh-theme.git

  # from zsh-user
  zgenom load https://gitee.com/winnochan/zsh-autosuggestions.git
  zgenom load https://gitee.com/winnochan/zsh-completions.git src

  zgenom load https://gitee.com/winnochan/zsh-autopair.git
  zgenom load https://gitee.com/winnochan/fast-syntax-highlighting.git
  # zgenom load https://gitee.com/winnochan/zsh-history-substring-search.git

  # generate the init script from plugins above
  zgenom save
fi

fpath+=$ZSH_DIR/completions
# source $ZSH_DIR/plugins/keychain.plugin.zsh
