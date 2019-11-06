if command -v keychain >/dev/null 2>&1; then

    # if [ -f ~/.ssh/ecdsa ] && [ -f ~/.ssh/dsa ] && [ -f ~/.ssh/rsa ]; then
    if [ -f ~/.ssh/ecdsa ]; then

        keychain_file=$HOME/.keychain/$(hostname)-sh
        if [ -f $keychain_file ]; then
            source $keychain_file
        fi

        if [[ $(ps -p $SSH_AGENT_PID | grep -v PID) != '' ]]; then
            keychain -q ~/.ssh/ecdsa
            # keychain -q ~/.ssh/dsa
            # keychain -q ~/.ssh/rsa
            source $keychain_file
        fi
    fi

fi
