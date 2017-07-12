export EDITOR="emacsclient -t -a vim"
export SPACESHIP_TIME_SHOW=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# GoEnv
export GOENV="$HOME/.goenv"
export GOPATH="$HOME/.gopath"
export PATH="$GOENV/bin:$GOPATH/bin:$PATH"
if command -v goenv > /dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# JEnv
export JENV="$HOME/.jenv"
export PATH="$JENV/bin:$PATH"
if command -v jenv > /dev/null 2>&1; then
    eval "$(jenv init -)"
fi

# PyEnv
export PYENV="$HOME/.pyenv"
export PATH="$PYENV/bin:$PATH"
if command -v pyenv > /dev/null 2>&1; then
    eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
fi

# RbEnv
export RBENV="$HOME/.rbenv"
export PATH="$PYENV/bin:$PATH"
if command -v rbenv > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi
