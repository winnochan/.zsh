# Q1项目指令
engine="../engine/engine.nostrip"
alias run="$engine -l . -r"
alias c="$engine -l . -r cmd/wizcmds/update.c -O"
alias mb="$engine -l . -b"
alias mu="make upcode"
alias mr="make restart"
alias up="touch etc/autoupdate.ini"
alias pe="ps x | grep 'engine/engine' | grep -v grep"
alias 38="ssh 38"
alias 80="ssh 80"
alias 127="ssh 127"

alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Emacs 指令
alias e="emacsclient -t -a vim"
alias ed="emacs --daemon"
alias edt="emacs --daemon --timed-requires"
alias edi="emacs --debug-init"
alias edit="emacs --debug-init --timed-requires"
alias eddi="emacs --daemon --debug-init"
alias eddit="emacs --daemon --debug-init --timed-requires"
alias ef='emacsclient -t -a vim $(fzf)'
alias vf='vim $(fzf)'

# Linux 常用指令
alias tf="tail -f"
alias k2="kill -2"
alias k9="kill -9"

# Shadowsocks 指令
alias ssnum="sudo lsof -i -n -P | egrep -c ':1080.+ESTABLISHED'"
alias sslist="sudo lsof -i -n -P | egrep ':1080.+ESTABLISHED'"
alias ss="ssserver -c /etc/shadowsocks.json -d"
alias gpac="genpac --pac-proxy 'SOCKS5 127.0.0.1:1080' --gfwlist-proxy='SOCKS5 127.0.0.1:1080' --output='autoproxy.pac' --gfwlist-url='https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt' --user-rule-from='user-rules.txt'"

# rg
alias rgi="rg -i"

# docker
alias ddoc="docker run -ti -p 4000:4000 docs/docker.github.io:latest"
alias dreg="docker run -d -p 5000:5000 --restart always --name registry registry:2"

# mosh
alias moshroot="mosh --ssh='ssh -l root'"

# jetbrains
alias echo-jetbrains-crack="echo '-javaagent:$HOME/.zsh/jetbrains/JetbrainsIdesCrack.jar'"

alias upall="git --git-dir=\"$HOME/.zsh/.git\" pull && git --git-dir=\"$HOME/.ssh/.git\" pull && git --git-dir=\"$HOME/.spacemacs.d/.git\" pull && git --git-dir=\"$HOME/.emacs.d/.git\" pull"
