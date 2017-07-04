alias tf="tail -f"
alias pg="ps x | grep -v grep | grep"

alias k2="kill -2"
alias k9="kill -9"

alias upa="sh ~/.zshrc.d/upgrade-all.sh"

# 文件字符串搜索
alias fall="find . -name '*' | xargs grep"
alias flog="find . -name '*.log' | xargs grep"
alias fpy="find . -name '*.py' | xargs grep"
alias fh="find . -name '*.h' | xargs grep"
alias fc="find . -name '*.c' | xargs grep"
alias fch="find . -name '*.[ch]' | xargs grep"

alias rch="find . -name '*.[ch]' | xargs sed -i 's/$1/$2/g'"
