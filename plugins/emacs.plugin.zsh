if command -v emacs >/dev/null 2>&1; then
    if [ "$(pgrep emacs)" = '' ]; then
        if [ -d ~/.spacemacs.d ]; then
            emacs --daemon >/dev/null 2>&1
        fi
    fi
fi
