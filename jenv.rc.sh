export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.svm:$PATH"
export PATH="$HOME/.svm/current/rt/bin:$PATH"

if which jenv > /dev/null; then
    eval "$(jenv init -)"
fi
