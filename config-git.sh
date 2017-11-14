#!/usr/bin/env bash

git config --global user.name "wowchan"
git config --global user.email "wowchan@icloud.com"
git config --global core.autocrlf input
git config --global core.safecrlf true
git config --global core.editor "emacsclient -t -a vim"
git config --global core.precomposeunicode true
git config --global push.default simple
git config --global pull.rebase true
