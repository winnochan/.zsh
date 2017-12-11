# Q1项目指令
engine="../engine/engine.nostrip"
alias run="$engine -l . -r"
alias c="$engine -l . -r cmd/wizcmds/update.c -O"
alias mb="$engine -l . -b"
alias mu="make upcode"
alias parse="$engine -l . -r cmd/wizcmds/parse.c -O"
alias pm="$engine -l . -r cmd/wizcmds/parse_mission.c -O"
alias ms="make start"
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
alias ed="emacs --daemon"
alias e="emacsclient -t -a vim"
alias ef='emacsclient -t -a vim $(fzf)'
alias vf='vim $(fzf)'

# Linux 常用指令
alias tf="tail -f"
alias k2="kill -2"
alias k9="kill -9"

# 字符串搜索
# alias fall="find . -name '*' | xargs grep"
# alias fh="find . -name '*.h' | xargs grep"
# alias fc="find . -name '*.c' | xargs grep"
# alias fch="find . -name '*.[ch]' | xargs grep"
# alias fcpp="find . -name '*.cpp' | xargs grep"
# alias flog="find . -name '*.log' | xargs grep"
# alias fpy="find . -name '*.py' | xargs grep"

# 字符串替换
# alias rch="find . -name \"*.[ch]\" | xargs sed -i \"s/$1/$2/g\""
# alias rpy="find . -name \"*.[py]\" | xargs sed -i \"s/$1/$2/g\""

# Shadowsocks 指令
alias ssnum="sudo lsof -i -n -P | egrep -c ':1080.+ESTABLISHED'"
alias sslist="sudo lsof -i -n -P | egrep ':1080.+ESTABLISHED'"
alias ss="ssserver -c /etc/shadowsocks.json -d"

# rg
alias rgi="rg -i"
