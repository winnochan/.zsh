sh ~/.oh-my-zsh/tools/upgrade.sh
cd ~/.emacs.d && git checkout develop && git pull origin develop
cd ~/.spacemacs.d && git pull origin master
cd ~/.zshrc.d && git pull origin master && python first-install.py
