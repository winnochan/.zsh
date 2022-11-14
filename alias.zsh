alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias bu="brew update"
alias buv="brew update -v"
alias bug="brew upgrade"

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

if [ "$ZSH_SYS" = 'Linux' ]; then
  alias open='xdg-open'
fi

# if [ "$ZSH_SYS" = "Darwin" ]; then
#   alias sftp='with-readline sftp'
# fi

# linux 常用指令
alias tf="tail -f"
alias k2="kill -2"
alias k9="kill -9"

alias pplog="pm2 logs --raw | pino-pretty -t 'SYS:standard'"
alias ppl="pm2 logs --raw | pino-pretty -t 'SYS:standard'"

# rust
alias rc='rustc --edition=2021 -C opt-level=3 -C lto=yes -C codegen-units=1'
alias ruu='rustup update'
alias rudb='rustup doc --book'
alias cbr='cargo build --release'
alias cb='cargo build'
alias crr='cargo run --release'
alias cr='cargo run'

# gcc / g++
alias gcc='gcc -O2'
alias g++='g++ -O2'

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
export PROXY_PORT=1086
# alias ap="export all_proxy=http://${PROXY_IP}:${PROXY_PORT};"
alias ap="export all_proxy=socks5://${PROXY_IP}:${PROXY_PORT};"
alias unap="unset all_proxy"

alias kc='keychain -q ~/.ssh/ecdsa && source $HOME/.keychain/$(hostname)-sh'

alias tsfzf='rg --type ts --files | fzf'

alias pc='proxychains4 -q'
alias pgl='proxychains4 -q git pull'
alias pgp='proxychains4 -q git push'

# git
alias glr='git pull --recurse-submodules'
alias gclr='git clone --recurse-submodules'
alias gmc='git merge --continue'

alias nr='npm run'
alias nrb='npm run build'
alias nrd='npm run doc'
alias nrr='npm run release'
alias nrs='npm run start'
alias nrsd='npm run start:dev'
alias nrsp='npm run start:prod'
alias ni='npm install'
alias nu='npm uninstall'
alias nis='npm install -S'
alias nid='npm install -D'
alias nus='npm uninstall -S'
alias nud='npm uninstall -D'
alias nd='node dist'

ff1080p() {
  __FILE=$1
  __FN=${__FILE%%.*}
  echo __FN, $1, $2, $3
  ffmpeg -i "$1" -c:a copy -c:s copy -c:v libx265 -preset "$2" -crf "$3" -aspect 16:9 -vf 'scale=1920:1080' "${__FN}-1080p${2}-${3}.mp4"
  unset __FILE
  unset __FN
}

ff720p() {
  __FILE=$1
  __FN=${__FILE%%.*}
  ffmpeg -i "$1" -c:a copy -c:s copy -c:v libx265 -preset "$2" -crf "$3" -aspect 16:9 -vf 'scale=1280:720' "${__FN}-720p${2}-${3}.mp4"
  unset __FILE
  unset __FN
}

ff480p() {
  __FILE=$1
  __FN=${__FILE%%.*}
  ffmpeg -i "$1" -c:a copy -c:s copy -c:v libx265 -preset "$2" -crf "$3" -aspect 16:9 -vf 'scale=854:480' "${__FN}-480p${2}-${3}.mp4"
  unset __FILE
  unset __FN
}

ffs() {
  __file=$1
  __fb=${__file%.*}
  __fe=${__file##*.}
  ffmpeg -ss $2 -i ${__file} -c copy "${__fb}_.${__fe}"
  unset __file
  unset __fb
  unset __fe
}

ffst() {
  __file=$1
  __fb=${__file%.*}
  __fe=${__file##*.}
  ffmpeg -ss $2 -to $3 -i ${__file} -c copy "${__fb}_.${__fe}"
  unset __file
  unset __fb
  unset __fe
}

ghrma() {
  git filter-branch --force --index-filter "git rm --cached --ignore-unmatch -r $1" --prune-empty --tag-name-filter cat -- --all
}
