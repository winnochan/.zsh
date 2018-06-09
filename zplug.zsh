export ZPLUG_HOME=${ZDOTDIR:-$ZSH_DIR}/.zplug

source $ZPLUG_HOME/init.zsh

# zplug "robbyrussell/oh-my-zsh", from:oh-my-zsh, use:"oh-my-zsh.sh"
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "plugins/per-directory-history", from:oh-my-zsh
zplug "plugins/tig", from:oh-my-zsh

# from github
# zgen load supercrabtree/k
# zgen load RobSis/zsh-completion-generator
zplug "molovo/tipz"
# zplug "desyncr/key-bindings", use:"key-bindings.plugin.zsh"

# theme
zplug "mafredri/zsh-async"
# zplug "sindresorhus/pure"
zplug "yardnsm/blox-zsh-theme"
zplug "seletskiy/zsh-fuzzy-search-and-edit"

# from zsh-user
zplug "zsh-users/zaw"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
# zplug "zsh-users/zsh-syntax-highlighting"
zplug "b4b4r07/enhancd", defer:1
zplug "hlissner/zsh-autopair", defer:2
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:2

if ! zplug check --verbose; then
    zplug install
fi

zplug load
