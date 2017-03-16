#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import platform
import sys

HOME = os.getenv('HOME')
REPO = sys.path[0]

VIM = (
    '.vimrc',
    'curl -sSfL https://raw.githubusercontent.com/ctjhoa/spacevim/master/vimrc.sample -o ~/.vimrc'
)
EMACS = ('.emacs.d',
         'git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d')
SPACEMACS = (
    '.spacemacs.d',
    'git clone https://github.com/wow4me/wow4spacemacs.git ~/.spacemacs.d')
OH_MY_ZSH = (
    '.oh-my-zsh',
    'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
)
OH_MY_ZSH_THEME = ('.oh-my-zsh/custom/themes',
                   'mkdir ~/.oh-my-zsh/custom/themes')
OH_MY_ZSH_THEME_ZETA = (
    '.oh-my-zsh/custom/themes/zeta.zsh-theme',
    'curl -sSfL https://raw.githubusercontent.com/skylerlee/zeta-zsh-theme/master/zeta.zsh-theme -o ~/.oh-my-zsh/custom/themes/zeta.zsh-theme'
)
AUTOJUMP = ('.autojump',
            'git clone git://github.com/joelthelion/autojump.git ~/autojump',
            'cd ~/autojump && python install.py', 'rm -rf ~/autojump')
if platform.system() == 'Darwin':
    AUTOJUMP = ('/usr/local/Cellar/autojump',
                'brew install autojump')
ZSH_AUTOSUGGESTIONS = (
    '.oh-my-zsh/custom/plugins/zsh-autosuggestions',
    'git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions'
)
WP_CLI = (
    'bin/wp',
    'sh -c "[ ! -e $HOME/bin ] && mkdir $HOME/bin"',
    'wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O ~/bin/wp',
    'chmod +x ~/bin/wp'
)
if platform.system() == 'Darwin':
    WP_CLI = ('/usr/local/bin/wp',
    'wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp',
    'chmod +x /usr/local/bin/wp')

WP_CLI_COMPLETION = (
    '{0}/wp-completion.bash'.format(REPO),
    'curl -sSfL https://raw.githubusercontent.com/wp-cli/wp-cli/master/utils/wp-completion.bash -o {0}/wp-completion.bash'.
    format(REPO))

NVM = (
    '.nvm',
    'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash',
    '[ -s ~/.nvm/nvm.sh ] && . ~/.nvm/nvm.sh && nvm install $(nvm version-remote --lts=Argon)',
    '[ -s ~/.nvm/nvm.sh ] && . ~/.nvm/nvm.sh && nvm install $(nvm version-remote --lts=Boron)',
)

INSTALL_LIST = [
    VIM,
    EMACS,
    SPACEMACS,
    OH_MY_ZSH,
    OH_MY_ZSH_THEME,
    OH_MY_ZSH_THEME_ZETA,
    AUTOJUMP,
    ZSH_AUTOSUGGESTIONS,
    WP_CLI,
    WP_CLI_COMPLETION,
    NVM,
]

THEME = 'zeta'
PLUGINS = [
    'autojump',  # remember cd and jump quickly
    # 'brew',  # add auto-completion for brew
    # 'colored-man-pages',  # colored man page
    'colorize',  # highlighting file content
    # 'cp',  # cp plugin
    # 'encode64',  # generate base64 encode quickly
    # 'debian',  # debian/ubuntu apt plugin
    # 'emacs',  # emacs plugin
    'git',  # add some git auto-completion and git alias
    # 'gradle',  # gradle plugin
    # 'iwhois',  #
    'last-working-dir',  # remember shell last working directory
    'npm',  # npm alias config
    'nvm',  # nvm env config
    # 'osx',  # quick-look file in os x system
    'per-directory-history',  # use history per directory
    # 'rsync',  # add some rsync alias
    # 'sudo',  # type <ESC> twice to add 'sudo'
    # 'urltools',  # url parser
    # 'virtualenv',  # virtualenv
    # 'virtualenvwrapper',  # virtualenvwrapper
    # 'wp-cli',  # Command-line tools for managing Wordpress
    'zsh-autosuggestions',  # command auto suggestion
    'zsh_reload',  # reload zsh when install program
    # 'zsh-syntax-highlighting',  # zsh command highlight
]


SEP = '========================================================================'
def main():
    prompt = 'Install editor config! v for vim, e for emacs, a for all: '

    flag = sys.argv[1] if len(sys.argv) > 1 else raw_input(prompt)
    if not flag or flag not in 've':
        flag = 'n'
    for conf in INSTALL_LIST:
        check_file = conf[0] if conf[0].startswith('/') else '/'.join(
            [HOME, conf[0]])
        if flag in 'ne' and check_file == '.vimrc':
            continue
        if flag in 'nv' and 'emacs' in check_file:
            continue
        print(SEP)
        if not os.path.exists(check_file):
            print('Installing {0} ...'.format(check_file))
            for cmd in conf[1:]:
                os.system(cmd)
        print('{0} installed!'.format(check_file))
    with open('/'.join([sys.path[0], 'zshrc.zsh-template'])) as zsh_template:
        content = zsh_template.read()
        content = content.replace('ZSH_THEME="robbyrussell"',
                                  'ZSH_THEME="{0}"'.format(THEME))
        content = content.replace('plugins=(git)',
                                  'plugins=({0})'.format(' '.join(PLUGINS)))
    with open('/'.join([HOME, '.zshrc']), 'w') as zshrc:
        zshrc.write(content + 'export LC_ALL="en_US.UTF-8"\nsource {0}/init.sh\n'.format(REPO))
    return


if __name__ == '__main__':
    main()
