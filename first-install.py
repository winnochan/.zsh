#!/usr/bin/env python

import os
import sys

HOME = os.getenv('HOME')

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
ZSH_AUTOSUGGESTIONS = (
    '.oh-my-zsh/custom/plugins/zsh-autosuggestions',
    'git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions'
)
INSTALL_LIST = [
    VIM, EMACS, SPACEMACS, OH_MY_ZSH, OH_MY_ZSH_THEME, OH_MY_ZSH_THEME_ZETA,
    AUTOJUMP, ZSH_AUTOSUGGESTIONS
]

THEME = 'zeta'
PLUGINS = ['git', 'autojump', 'zsh-autosuggestions']


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
        if not os.path.exists(check_file):
            for cmd in conf[1:]:
                print('Installing {0} ...'.format(check_file))
                os.system(cmd)
        print('{0} installed!'.format(check_file))
    with open('/'.join([sys.path[0], 'zshrc.zsh-template'])) as zsh_template:
        content = zsh_template.read()
        content = content.replace('ZSH_THEME="robbyrussell"',
                                  'ZSH_THEME="{0}"'.format(THEME))
        content = content.replace('plugins=(git)',
                                  'plugins=({0})'.format(' '.join(PLUGINS)))
    with open('/'.join([HOME, '.zshrc']), 'w') as zshrc:
        zshrc.write(content + 'source ~/.zshrc.d/init.sh\n')
    return


if __name__ == '__main__':
    main()
