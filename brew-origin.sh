cd "$(brew --repo)"
git remote set-url origin https://github.com/Homebrew/brew.git

if [ -d $(brew --repo)/Library/Taps/homebrew/homebrew-core ]; then
    cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
    git remote set-url origin https://github.com/Homebrew/homebrew-core.git
fi

if [ -d $(brew --repo)/Library/Taps/homebrew/homebrew-cask ]; then
    cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask
    git remote set-url origin https://github.com/Homebrew/homebrew-cask.git
fi
