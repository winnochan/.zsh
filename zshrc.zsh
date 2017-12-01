export ZSH_HOME=$(cd "$(dirname "$0")"; pwd)
export ZPLUG_HOME=$ZSH_HOME/zplug
source $ZPLUG_HOME/init.zsh

# zmodload zsh/zprof

# zplug "zplug/zplug", hook-build:"zplug --self-manage"

# plugins from prezto
# zplug "sorin-ionescu/prezto", use:"init.zsh", \
#       hook-build:"ln -s $ZPLUG_HOME/repos/sorin-ionescu/prezto ~/.zprezto"
# zstyle ':prezto:load' pmodule 'editor'
# if zplug check sorin-ionescu/prezto; then
#     source $ZSH_HOME/prezto.zsh
# fi

# plugins from zsh-user
zplug "zsh-users/zaw"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
# must the end of other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "robbyrussell/oh-my-zsh", \
      hook-build:"ln -s $ZPLUG_HOME/repos/robbyrussell/oh-my-zsh ~/.oh-my-zsh"
if zplug check robbyrussell/oh-my-zsh; then
    source $ZSH_HOME/ohmyzsh.zsh
fi

# plugins from oh-my-zsh
# zplug "plugins/autojump", from:oh-my-zsh
# zplug "plugins/colored-man-pages", from:oh-my-zsh
# zplug "plugins/encode64", from:oh-my-zsh
# zplug "plugins/extract", from:oh-my-zsh
# zplug "plugins/git", from:oh-my-zsh
# zplug "plugins/last-working-dir", from:oh-my-zsh
# zplug "plugins/per-directory-history", from:oh-my-zsh
# zplug "plugins/tib", from:oh-my-zsh
# zplug "plugins/zsh-completion-generator", from:oh-my-zsh
# zplug "plugins/zsh_reload", from:oh-my-zsh

# plugins from github
zplug "djui/alias-tips"
# zplug "jsks/czhttpd"
zplug "b4b4r07/enhancd", use:"init.sh", defer:1
# zplug "psprint/history-search-multi-word"
zplug "hlissner/zsh-autopair", defer:2

# theme from github
zplug 'denysdovhan/spaceship-zsh-theme', as:theme, use:"spaceship.zsh"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    zplug install
fi

# Then, source plugins and add commands to $PATH
# zplug load --verbose
zplug load

# zplug check returns true if the given repository exists
if zplug check b4b4r07/enhancd; then
    # setting if enhancd is available
    export ENHANCD_FILTER=fzy
fi

# custom alias
source $ZSH_HOME/alias.zsh

export LC_ALL="en_US.UTF-8"
export GTAGSLABEL=pygments
export SPACESHIP_TIME_SHOW=true
export EDITOR="emacsclient -t -a vim"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=1'
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# goenv
if command -v goenv >/dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# nodenv
if command -v nodenv >/dev/null 2>&1; then
    eval "$(nodenv init -)"
fi

# pyenv
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# scalaenv
if command -v scalaenv >/dev/null 2>&1; then
    eval "$(scalaenv init -)"
fi
