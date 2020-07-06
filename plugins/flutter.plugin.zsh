# dart
export PATH=$HOME/.pub-cache/bin:$PATH

# flutter
if [ $commands[flutter] ]; then
    __version=$(cat ~/.tool-versions | grep flutter | cut -d ' ' -f 2)
    # __version=$(asdf current flutter | cut -d ' ' -f 1)
    if [ -d ~/.asdf/installs/flutter/${__version} ]; then
        export FLUTTER_ROOT=~/.asdf/installs/flutter/${__version}

        if [ -d ${FLUTTER_ROOT}/bin/cache/dart-sdk ]; then
            export DART_SDK_HOME=${FLUTTER_ROOT}/bin/cache/dart-sdk
            export PATH=${DART_SDK_HOME}/bin:$PATH
        fi
    fi
    unset __version

    export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub/
    export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter
elif [ -d $ZSH_CACHE/flutter ]; then
    export FLUTTER_ROOT=$ZSH_CACHE/flutter

    export PATH=${FLUTTER_ROOT}/bin:$PATH

    if [ -d ${FLUTTER_ROOT}/bin/cache/dart-sdk ]; then
        export DART_SDK_HOME=${FLUTTER_ROOT}/bin/cache/dart-sdk
        export PATH=${DART_SDK_HOME}/bin:$PATH
    fi

    export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub/
    export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter
fi
