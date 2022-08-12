skip_global_compinit=1

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export ZSH_DIR=$(dirname ${(%):-%N})
export ZSH_SYS=$(uname)
export ZSH_CACHE=$ZSH_DIR/.cache
export ZSH_CACHE_DIR=$ZSH_DIR/.cache

if [ ! -d $HOME/.config ]; then
  mkdir $HOME/.config
fi

export BETTER_EXCEPTIONS=1
export MYPY_CACHE_DIR=$ZSH_CACHE/mypy

source $ZSH_DIR/plugins/config.plugin.zsh
source $ZSH_DIR/plugins/alias-finder.plugin.zsh

if [ "$ZSH_SYS" = "Darwin" ]; then
  source $ZSH_DIR/plugins/brew.plugin.zsh
fi

source $ZSH_DIR/plugins/oh-my-zsh.plugin.zsh
source $ZSH_DIR/plugins/blox-theme.plugin.zsh
# source $ZSH_DIR/plugins/emacs.plugin.zsh
# source $ZSH_DIR/plugins/flutter.plugin.zsh
source $ZSH_DIR/plugins/fzf.plugin.zsh
source $ZSH_DIR/plugins/go.plugin.zsh
source $ZSH_DIR/plugins/gtags.plugin.zsh
# source $ZSH_DIR/plugins/java.plugin.zsh
# source $ZSH_DIR/plugins/miniconda.plugin.zsh
source $ZSH_DIR/plugins/proxychains.plugin.zsh
source $ZSH_DIR/plugins/pyenv.plugin.zsh
source $ZSH_DIR/plugins/vagrant.plugin.zsh
source $ZSH_DIR/plugins/rust.plugin.zsh
source $ZSH_DIR/plugins/zsh-autosuggestions.plugin.zsh
# source $ZSH_DIR/plugins/zsh-bin.plugin.zsh

# source $ZSH_DIR/zgenom.zsh
# source $ZSH_DIR/zinit.zsh
source $ZSH_DIR/zi.zsh

source $ZSH_DIR/alias.zsh
source $ZSH_DIR/custom.zsh

source $ZSH_DIR/plugins/git.plugin.zsh

source $ZSH_DIR/plugins/asdf.plugin.zsh

fpath=($ZSH_DIR/completions $fpath)

# autoload -Uz compinit
# for dump in $HOME/.zcompdump(N.mh+24); do
#     compinit
# done
# compinit -C
