# Path to your oh-my-zsh installation.
  export ZSH=/home/wowchan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
ZSH_THEME="zeta"
# ZSH_THEME="lambda-mod"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# plugins=(git-completion)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
# EMACS_HOME="$HOME/app/emacs-24.5/bin/"
# VIM_HOME="$HOME/app/vim-7.4/bin/"
# PYTHON_HOME="$HOME/app/python-2.7.12/bin/"
# PYTHON_SITE_PACKAGE_HOME="$HOME/app/python-2.7.12/lib/python2.7/site-packages/"
# HG_HOME="$HOME/app/mercurial-3.8.4/bin/"
# GIT_HOME="$HOME/app/git-2.9.2/bin/"
# TIG_HOME="$HOME/app/tig-2.1.1/bin/"

HOME_BIN="$HOME/app/bin/:$HOME/app/sbin/"
export PATH="$HOME_BIN:$PATH"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# virtualenv
# export PATH="$HOME/.local/bin:$PATH"

# jenv
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"

# source $ZSH/custom/plugins/git-completion.zsh
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias for git
alias gst="git status -s"
alias gff="git diff"
alias gco="git checkout"
alias gdd="git add"
alias gci="git commit"
alias gpl="git pull"
alias gpo="git push origin"
alias gbl="git blame"
alias gcp="git cherry-pick"
alias gss="git stash save"
alias gsp="git stash pop"
alias grd="git rebase develop"

# alias for others
alias getags="find ~/dev/q1/logic/ -name \"*.[chS]\" | xargs etags"
alias gctags="find ~/dev/q1/logic/ -name \"*.[chS]\" | xargs etags"
alias ect="emacsclient -t"
alias ecc="emacsclient -c"
alias ecn="emacsclient -n"
alias tf="tail -f"

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/home/wowchan/.jenv/bin/jenv-init.sh" ]] && source "/home/wowchan/.jenv/bin/jenv-init.sh" && source "/home/wowchan/.jenv/commands/completion.sh"

# eval "$(cd dev/q1/logic/)"

alias pt="./parse_trigger.sh"
alias parse="../engine/engine.nostrip -l ./ -r cmd/wizcmds/parse.c -O"
alias pm="../engine/engine.nostrip -l ./ -r cmd/wizcmds/parse_mission.c -O"
alias mb="make build"
alias ms="make start"
alias mr="make restart"
alias mr0="make test-r0"
alias rg="find . -name \"*\" | xargs grep "
alias rgc="find . -name \"*.[ch]\" | xargs grep "
alias rglog="find . -name \"*.log\" | xargs grep "
alias rgpy="find . -name \"*.py\" | xargs grep "
alias gr="grep -R * "

# cscope
alias gencs="cscope -Rbkq"
