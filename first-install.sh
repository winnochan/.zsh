#!/usr/bin/env bash

function check_cmd {
    # if ! cmd="$(type -p \"$1\")" || [ -z "$cmd" ]; then
    #     echo "Please install $1."
    # fi
    if ! type "$1" > /dev/null 2>&1; then
        echo "Please install $1."
        return 1
    fi
    return 0
}

function check {
    echo 'check dependency...'
    echo $SHELL
    # if $SHELL -ne 'zsh'; then
    #     echo 'Please use zsh'
    # fi
    if ! check_cmd "git"; then
        echo 'exit install'
        exit 1
    fi
}

function install-oh-my-zsh {
    echo 'installing oh-my-zsh...'
    local home="$HOME/.oh-my-zsh"
    if [ ! -d $home ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi
    echo 'oh-my-zsh installed!'
}

function install-autojump {
    echo 'installing autojump...'
    if [ ! -d "$PWD/autojump" ]; then
        git clone git://github.com/joelthelion/autojump.git
    fi
    ./autojump/install.py
    echo 'autojump installed!'
}

# main function
function main {
    # echo 'enter main function'
    local pwd=$PWD
    check
    install-oh-my-zsh
}

main
