if [ ! -f ~/.gitconfig ]; then

  git config --global user.name WinnoChan
  git config --global user.email 'winnochan@icloud.com'

  if ! command -v ksshaskpass >/dev/null 2>&1; then
    git config --global credential.helper 'cache --timeout=604800'
  fi

  git config --global url."https://mirrors.ustc.edu.cn/homebrew-core.git".insteadOf "https://github.com/Homebrew/homebrew-core"
  git config --global url."https://mirrors.ustc.edu.cn/linuxbrew-core.git".insteadOf "https://github.com/Homebrew/linuxbrew-core"
  git config --global url."https://mirrors.ustc.edu.cn/brew.git".insteadOf "https://github.com/Homebrew/brew"

fi

if command -v ksshaskpass >/dev/null 2>&1; then
  export GIT_ASKPASS=`which ksshaskpass`
fi
