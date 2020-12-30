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
alias editrp="emacs --debug-init --timed-requires --profile"
alias ef='emacsclient -t -a vim $(fzf)'
alias vf='vim $(fzf)'

# linux 常用指令
alias tf="tail -f"
alias k2="kill -2"
alias k9="kill -9"

# shadowsocks 指令
alias ssnum="sudo lsof -i -n -P | egrep -c ':1087.+ESTABLISHED'"
alias sslist="sudo lsof -i -n -P | egrep ':1087.+ESTABLISHED'"

# rg
alias rgi="rg -i"

# docker
alias ddoc="docker run -ti -p 4000:4000 docs/docker.github.io:latest"
alias dreg="docker run -d -p 5000:5000 --restart always --name registry registry:2"

# mosh
alias moshroot="mosh --ssh='ssh -l root'"

# v2ray install
alias v2rayi="bash <(curl -L -s https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh) && bash <(curl -L -s https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-dat-release.sh)"

export PROXY_IP=127.0.0.1
export PROXY_PORT=1087
alias ap="export all_proxy=http://${PROXY_IP}:${PROXY_PORT};"
alias unap="unset all_proxy"

alias kc='keychain -q ~/.ssh/ecdsa && source $HOME/.keychain/$(hostname)-sh'

alias tsfzf='rg --type ts --files | fzf'

alias pc='proxychains4'
alias pgl='proxychains4 git pull'
alias pgp='proxychains4 git push'

# git
alias glr='git pull --recurse-submodules'
alias gclr='git clone --recurse-submodules'

alias nr='npm run'
alias nrb='npm run build'
alias nrd='npm run doc'
alias nrs='npm run start'
alias nrsd='npm run start:dev'
alias nrsp='npm run start:prod'
alias ni='npm install'
alias nu='npm uninstall'
alias nis='npm install -S'
alias nid='npm install -D'
alias nus='npm uninstall -S'
alias nud='npm uninstall -D'
