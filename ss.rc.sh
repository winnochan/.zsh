alias ssnum="sudo lsof -i -n -P | egrep -c ':1080.+ESTABLISHED'"
alias sslist="sudo lsof -i -n -P | egrep ':1080.+ESTABLISHED'"
alias ss="ssserver -c /etc/shadowsocks.json -d"
