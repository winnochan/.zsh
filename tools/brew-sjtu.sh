if [ -d $(brew --repo) ]; then
    git -C "$(brew --repo)" remote set-url origin https://mirrors.sjtug.sjtu.edu.cn/git/brew.git
fi

if [ -d $(brew --repo homebrew/core) ]; then
    git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-core.git
fi

if [ -d $(brew --repo homebrew/cask) ]; then
    git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-cask.git
fi
