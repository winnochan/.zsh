if command -v keychain >/dev/null 2>&1; then

    # if [ -f ~/.ssh/ecdsa ] && [ -f ~/.ssh/dsa ] && [ -f ~/.ssh/rsa ]; then
    if [ -f ~/.ssh/ecdsa ]; then

        # echo 'has ecdsa, dsa, rsa and keychain'

        keychain_file=$HOME/.keychain/$(hostname)-sh
        if [ -f $keychain_file ]; then
            source $keychain_file
        fi

        # cur_ssh_agent_id=$(ps x | grep ssh-agent | grep -v grep | cut -d ' ' -f 1)
        cur_ssh_agent_id=$(ps -ef | pgrep ssh-agent)
        # cur_ssh_agent_id=$(pidof ssh-agent)
        if [[ ${cur_ssh_agent_id} != ${SSH_AGENT_PID} ]]; then

            # echo 'keychain config is old'

            keychain -q ~/.ssh/ecdsa
            # keychain -q ~/.ssh/dsa
            # keychain -q ~/.ssh/rsa

            source $keychain_file

        fi

    fi

fi
