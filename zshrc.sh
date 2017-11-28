current_dir=$(cd "$(dirname "$0")"; pwd)
plugins_dir=$current_dir/plugins

source $current_dir/antigen.zsh

antigen use oh-my-zsh

# oh-my-zsh plugins
# antigen bundle autojump
# antigen bundle brew
antigen bundle colored-man-pages
antigen bundle encode64
antigen bundle extract
antigen bundle git
antigen bundle last-working-dir
antigen bundle per-directory-history
# antigen bundle pyenv
# antigen bundle ssh-agent
# antigen bundle sudo
# antigen bundle svn
# antigen bundle svn-fast-info
# antigen bundle swiftpm
# antigen bundle systemadmin
antigen bundle tig
# antigen bundle tmux
# antigen bundle virtualenv
# antigen bundle virtualenvwrapper
# antigen bundle zsh-completion-generator
antigen bundle zsh_reload

# git repo
# antigen bundle zdharma/zui
# antigen bundle zdharma/zredis
# antigen bundle zdharma/zbrowse
# antigen bundle zdharma/fast-syntax-highlighting
antigen bundle psprint/history-search-multi-word

antigen bundle djui/alias-tips
antigen bundle hlissner/zsh-autopair
antigen bundle jsks/czhttpd
antigen bundle unixorn/autoupdate-antigen.zshplugin

antigen bundle zsh-users/zaw
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
# must the end of other plugins
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
