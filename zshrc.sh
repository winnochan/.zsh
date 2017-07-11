export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export ZSH_CUSTOM=$(cd "$(dirname "$0")"; pwd)
source $ZSH_CUSTOM/antigen.zsh
antigen init $ZSH_CUSTOM/antigenrc

antigen use oh-my-zsh

antigen bundle git

antigen bundle hchbaw/auto-fu.zsh

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
