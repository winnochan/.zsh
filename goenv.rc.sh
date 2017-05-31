export GOENV_ROOT="$HOME/.goenv"
export GOPATH="$HOME/.gopath"
export PATH="$GOENV_ROOT/bin:$GOPATH/bin:$PATH"

if type goenv >/dev/null 2>&1; then
   eval "$(goenv init -)"
fi
