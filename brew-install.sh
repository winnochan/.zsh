# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

sh $ZSH_HOME/brew-ustc.sh

brew cask install iina karabiner-elements xquartz iterm2 folx thunder eim qq
brew cask install neteasemusic kugoumusic baidunetdisk youku openoffice dash
brew cask install google-chrome alfred appcleaner box-sync shadowsocksx-ng
brew cask install typinator android-studio font-go font-go-mono font-go-medium
brew cask install java8 avast-security sublime-text openemu shiftit teamviewer
brew cask install youdaodict squirrel boostnote cakebrew

brew install tmux --with-utf8proc
brew install ant --with-bcel --with-ivy
brew install maven
brew install gradle --with-all
brew install sbt
brew install git --with-blk-sha1 --with-curl --with-gettext --with-openssl --with-pcre2 --with-persistent-https --with-subversion
brew install lua --with-completion
brew install tig --with-docs
brew install libfaketime
brew install zsh --with-unicode9
brew install global --with-pygments --with-sqlite3
brew install graphviz --with-app --with-bindings --with-freetype --with-freetype --with-librsvg --with-pango --with-x11
brew install emacs --with-cocoa --with-cocoa --with-dbus --with-gnutls --with-imagemagick@6 --with-librsvg --with-mailutils --with-modules
brew install vim --with-client-server --with-gettext --with-lua --with-luajit --with-override-system-vi --with-python3 --with-tcl
