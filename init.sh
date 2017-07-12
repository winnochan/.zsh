current_dir=$(cd "$(dirname "$0")"; pwd)
plugins_dir=$current_dir/plugins

source ~/.zshrc.d/autojump.rc.sh
source ~/.zshrc.d/cmd.rc.sh
source ~/.zshrc.d/emacs.rc.sh
source ~/.zshrc.d/goenv.rc.sh
source ~/.zshrc.d/pyenv.rc.sh
source ~/.zshrc.d/q1.rc.sh
source ~/.zshrc.d/rbenv.rc.sh
source ~/.zshrc.d/ss.rc.sh
source ~/.zshrc.d/startup.rc.sh

# zsh-autosuggest config
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
