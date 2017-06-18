export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
if which pyenv > /dev/null; then
    eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
    alias pydep="pip freeze > requirements.txt"
    alias py2="pyenv local $(pyenv versions | grep "  2.7.*$" | tail -1) > /dev/null && python"
    alias py3="pyenv local $(pyenv versions | grep "  3.5.*$" | tail -1) > /dev/null && python"
    alias pfr="pip freeze > requirements.txt"
fi

export FLASK_APP="run.py"
export FLASK_DEBUG=1
export FLASK_HOST="0.0.0.0"
