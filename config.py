# -*- coding: utf-8 -*-

import os
import sys

CHECK = 'check'
DEPENDENCY = 'dependency'
INSTALL = 'install'
UPDATE = 'update'
UNINSTALL = 'uninstall'

VIM = {
    CHECK: '~/.vimrc',
    DEPENDENCY: None,
    INSTALL: [
        'curl -sSfL https://raw.githubusercontent.com/ctjhoa/spacevim/master/vimrc.sample -o ~/.vimrc'
    ],
    UPDATE: [
        'curl -sSfL https://raw.githubusercontent.com/ctjhoa/spacevim/master/vimrc.sample -o ~/.vimrc'
    ],
    UNINSTALL: ['rm ~/.vimrc']
}

EMACS = {
    CHECK: '~/.emacs.d',
    DEPENDENCY: None,
    INSTALL: [
        'git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d'
    ],
    UPDATE: [
        'cd ~/.emacs.d && git pull --rabase origin master'
    ],
    UNINSTALL: ['rm -rf ~/.emacs.d']
}

SPACEMACS = {
    CHECK: '~/.spacemacs.d',
    DEPENDENCY: EMACS,
    INSTALL: [
        'git clone https://github.com/wow4me/wow4spacemacs.git ~/.spacemacs.d'
    ],
    UPDATE: [
        'cd ~/.spacemacs.d && git pull --rebase origin master'
    ],
    UNINSTALL: ['rm -rf ~/.spacemacs.d']
}

OH_MY_ZSH = {
    CHECK: '~/.oh-my-zsh',
    DEPENDENCY: None,
    INSTALL: [
        'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
    ],
    UPDATE: [
        'cd ~/.oh-my-zsh && git pull --rebase origin master'
    ],
    UNINSTALL: ['rm -rf ~/.oh-my-zsh']
}

OH_MY_ZSH_CUSTOM_THEMES = {
    CHECK: '~/.oh-my-zsh/custom/themes',
    DEPENDENCY: None,
    INSTALL: ['mkdir ~/.oh-my-zsh/custom/themes'],
    UPDATE: [],
    UNINSTALL: ['rm -rf ~/.oh-my-zsh/custom/themes']
}

OH_MY_ZSH_THEME_ZETA = {
    CHECK: '~/.oh-my-zsh/custom/themes/zeta.zsh-theme',
    DEPENDENCY: OH_MY_ZSH_CUSTOM_THEMES,
    INSTALL: ['curl -sSfL https://raw.githubusercontent.com/skylerlee/zeta-zsh-theme/master/zeta.zsh-theme -o ~/.oh-my-zsh/custom/themes/zeta.zsh-theme'],
    UPDATE: ['curl -sSfL https://raw.githubusercontent.com/skylerlee/zeta-zsh-theme/master/zeta.zsh-theme -o ~/.oh-my-zsh/custom/themes/zeta.zsh-theme'],
    UNINSTALL: ['rm ~/.oh-my-zsh/custom/themes/zeta.zsh-theme']
}

BREW = {
    CHECK: '/usr/local/bin/brew',
    DEPENDENCY: None,
    INSTALL: [],
    UPDATE: [],
    UNINSTALL: []
}

AUTOJUMP = {
    CHECK: '/usr/local/bin/autojump' if sys.platform == 'darwin' else '~/.autojump',
    DEPENDENCY: None,
    INSTALL: [
        'brew install autojump'
    ] if sys.platform == 'darwin' else [
        'git clone git://github.com/joelthelion/autojump.git ~/.autojump.repo',
        'cd ~/.autojump.repo && python install.py',
    ],
    UPDATE: [
        'brew upgrade autojump'
    ] if sys.platform == 'darwin' else [
        'cd ~/.autojump.repo && git pull --rebase origin master',
        'cd ~/.autojump.repo && python install.py'
    ],
    UNINSTALL: [
        'brew uninstall autojump'
    ] if sys.platform == 'darwin' else [
        'cd ~/.autojump.repo && python uninstall.py',
        'rm -rf ~/.autojump.repo'
    ]
}

ZSH_AUTOSUGGESTIONS = {
    CHECK: '~/.oh-my-zsh/custom/plugins/zsh-autosuggestions',
    DEPENDENCY: None,
    INSTALL: ['git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions'],
    UPDATE: ['cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && git pull --rebase origin master'],
    UNINSTALL: ['rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions']
}

WP_CLI = {
    CHECK: '/usr/local/bin/wp' if sys.platform == 'darwin' else '~/bin/wp',
    DEPENDENCY: None,
    INSTALL: [
        'wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp',
        'chmod +x /usr/local/bin/wp'
    ] if sys.platform == 'darwin' else [
        'sh -c "[ ! -e ~/bin ] && mkdir ~/bin"',
        'wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O ~/bin/wp',
        'chmod +x ~/bin/wp'
    ],
    UPDATE: [
        'wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp',
        'chmod +x /usr/local/bin/wp'
    ] if sys.platform == 'darwin' else [
        'sh -c "[ ! -e ~/bin ] && mkdir ~/bin"',
        'wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O ~/bin/wp',
        'chmod +x ~/bin/wp'
    ],
    UNINSTALL: ['rm /usr/local/bin/wp' if sys.platform == 'darwin' else 'rm ~/bin/wp']
}

WP_CLI_COMPLETION = {
    CHECK: '',
    DEPENDENCY: None,
    INSTALL: [],
    UPDATE: [],
    UNINSTALL: []
}

NVM = {
    CHECK: '~/.nvm',
    DEPENDENCY: None,
    INSTALL: ['curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash'],
    UPDATE: ['curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash'],
    UNINSTALL: ['rm -rf ~/.nvm']
}

NODE = {
    CHECK: '',
    DEPENDENCY: None,
    INSTALL: [],
    UPDATE: [],
    UNINSTALL: []
}

VMD = {
    CHECK: '',
    DEPENDENCY: None,
    INSTALL: [],
    UPDATE: [],
    UNINSTALL: []
}



print os.path.expanduser('~/.oh-my-zsh')
