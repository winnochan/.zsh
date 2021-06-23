if command -v keychain >/dev/null 2>&1; then

    # if [ -f ~/.ssh/ecdsa ] && [ -f ~/.ssh/dsa ] && [ -f ~/.ssh/rsa ]; then
    if [ -f ~/.ssh/ecdsa ]; then

        keychain_file=$HOME/.keychain/$HOST-sh
        if [ -f $keychain_file ]; then
            source $keychain_file
        fi

        pid_cmd_name=$(ps -p $SSH_AGENT_PID | grep -v PID | xargs | cut -d ' ' -f 4)
        if [[ $pid_cmd_name != 'ssh-agent' ]]; then
            keychain -q ~/.ssh/ecdsa
            # keychain -q ~/.ssh/dsa
            # keychain -q ~/.ssh/rsa
            source $keychain_file
        fi

        unset pid_cmd_name
        unset keychain_file
    fi

fi
