asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang $(asdf latest golang)

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs $(asdf latest nodejs 12)

asdf plugin-add python
asdf install python $(asdf latest python 3)
