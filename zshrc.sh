export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export ANTIGEN_PLUGIN_UPDATE_DAYS=1
export ANTIGEN_SYSTEM_UPDATE_DAYS=1

export ZSH_CUSTOM=$(cd "$(dirname "$0")"; pwd)
source $ZSH_CUSTOM/antigen.zsh
# antigen init $ZSH_CUSTOM/antigenrc

antigen use oh-my-zsh

antigen bundle alias-tips
antigen bundle autojump
antigen bundle git

# antigen bundle hchbaw/auto-fu.zsh
antigen bundle djui/alias-tips
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-autosuggestions
# must the end of other plugins
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
