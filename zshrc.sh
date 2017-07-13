export ZSH_CUSTOM=$(cd "$(dirname "$0")"; pwd)
export ZSH_PLUGIN=$ZSH_CUSTOM/plugins

source $ZSH_CUSTOM/antigen.zsh

antigen use oh-my-zsh

# oh-my-zsh plugins
antigen bundle git
antigen bundle last-working-dir
antigen bundle per-directory-history
antigen bundle zsh-completion-generator
antigen bundle zsh_reload

# git repo
antigen bundle djui/alias-tips
antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-autosuggestions

# must the end of other plugins
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
