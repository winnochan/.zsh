alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# emacs 指令
alias e="emacsclient -t -a emacs"
alias ed="emacs --daemon"
alias edt="emacs --daemon --timed-requires"
alias edi="emacs --debug-init"
alias edit="emacs --debug-init --timed-requires"
alias eddi="emacs --daemon --debug-init"
alias eddit="emacs --daemon --debug-init --timed-requires"
alias ef='emacsclient -t -a vim $(fzf)'
alias vf='vim $(fzf)'

# linux 常用指令
alias tf="tail -f"
alias k2="kill -2"
alias k9="kill -9"

# shadowsocks 指令
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

# v2ray install
alias v2rayi="bash <(curl -L -s https://install.direct/go.sh)"

export PROXY_IP=127.0.0.1
export PROXY_PORT=1087
alias ap="export all_proxy=http://${PROXY_IP}:${PROXY_PORT};"
alias unap="unset all_proxy"

alias kc='keychain -q ~/.ssh/ecdsa && source $HOME/.keychain/$(hostname)-sh'

alias tsfzf='rg --type ts --files | fzf'
