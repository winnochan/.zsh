if command -v emacs >/dev/null 2>&1; then
    if [ "$(pgrep emacs)" = '' ]; then
        emacs --daemon >/dev/null 2>&1
    fi
fi
