if [ -d $(brew --repo) ]; then
    git -C "$(brew --repo)" remote set-url origin https://mirrors.ustc.edu.cn/brew.git 
fi

if [ -d $(brew --repo homebrew/core) ]; then
    if [ "$ZSH_SYS" = "Darwin" ]; then
    	git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
    elif [ "$ZSH_SYS" = "Linux" ]; then
    	git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.ustc.edu.cn/linuxbrew-core.git
    fi
fi

if [ "$ZSH_SYS" = "Darwin" ]; then
    if [ -d $(brew --repo homebrew/cask) ]; then
    	git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git
    fi
fi
