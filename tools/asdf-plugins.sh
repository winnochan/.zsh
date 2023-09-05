brew install readline xz gnupg

asdf plugin-add golang https://gitee.com/winnochan/asdf-golang.git
asdf install golang $(asdf latest golang)

asdf plugin-add nodejs https://gitee.com/winnochan/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs $(asdf latest nodejs 14)

asdf plugin-add python https://gitee.com/winnochan/asdf-python.git
asdf install python $(asdf latest python 3)
