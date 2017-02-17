export LC_ALL="en_US.UTF-8"

alias pt="./parse_trigger.sh"
alias parse="../engine/engine.nostrip -l ./ -r cmd/wizcmds/parse.c -O"
alias pm="../engine/engine.nostrip -l ./ -r cmd/wizcmds/parse_mission.c -O"
alias mb="make build"
alias ms="make start"
alias mr="make restart"
alias mr0="make test-r0"
alias er="../engine/engine.nostrip -l ./ -r"
alias up="touch etc/autoupdate"

alias q1="ssh 192.168.16.155 -p 32222 -l q1"
alias format="astyle --style=linux --indent=spaces=4"
