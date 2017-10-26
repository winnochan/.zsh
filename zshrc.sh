current_dir=$(cd "$(dirname "$0")"; pwd)
plugins_dir=$current_dir/plugins

source $current_dir/antigen.zsh

antigen use oh-my-zsh

# oh-my-zsh plugins
antigen bundle git
antigen bundle last-working-dir
antigen bundle per-directory-history
antigen bundle zsh-completion-generator
antigen bundle zsh_reload

# git repo
# antigen bundle zdharma/zui
# antigen bundle zdharma/zredis
# antigen bundle zdharma/zbrowse
# antigen bundle zdharma/fast-syntax-highlighting
# antigen bundle psprint/history-search-multi-word
antigen bundle djui/alias-tips
antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-autosuggestions

# must the end of other plugins
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
