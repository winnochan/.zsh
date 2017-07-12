export LC_ALL="en_US.UTF-8"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export ANTIGEN_PLUGIN_UPDATE_DAYS=1
export ANTIGEN_SYSTEM_UPDATE_DAYS=1

export ZSH_CUSTOM=$(cd "$(dirname "$0")"; pwd)
export ZSH_PLUGIN=$ZSH_CUSTOM/plugins

source $ZSH_CUSTOM/antigen.zsh

antigen use oh-my-zsh

antigen bundle autojump
antigen bundle git
antigen bundle last-working-dir
antigen bundle per-directory-history
antigen bundle zsh-completion-generator
antigen bundle zsh_reload

# antigen bundle hchbaw/auto-fu.zsh
antigen bundle djui/alias-tips
# antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-autosuggestions
# must the end of other plugins
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
