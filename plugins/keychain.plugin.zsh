if command -v keychain >/dev/null 2>&1; then

    # if [ -f ~/.ssh/ecdsa ] && [ -f ~/.ssh/dsa ] && [ -f ~/.ssh/rsa ]; then
    if [ -f ~/.ssh/ecdsa ]; then

        keychain_file=$HOME/.keychain/$(hostname)-sh
        if [ -f $keychain_file ]; then
            source $keychain_file
        fi

        cur_ssh_agent_id=0
        if [ "$ZSH_SYS" = "Darwin" ]; then
            cur_ssh_agent_id=$(ps -ef | pgrep ssh-agent)
        else
            cur_ssh_agent_id=$(pidof ssh-agent)
        fi

        if [[ ${cur_ssh_agent_id} != ${SSH_AGENT_PID} ]]; then

            keychain -q ~/.ssh/ecdsa
            # keychain -q ~/.ssh/dsa
            # keychain -q ~/.ssh/rsa

            source $keychain_file

        fi

    fi

fi
