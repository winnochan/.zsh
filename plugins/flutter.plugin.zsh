# dart
if [ -d $HOME/.pub-cache ]; then
    export PATH=$HOME/.pub-cache/bin:$PATH
fi

# flutter
if [ -d $ZSH_CACHE/flutter ]; then
    export FLUTTER_ROOT=$ZSH_CACHE/flutter

    export PATH=${FLUTTER_ROOT}/bin:$PATH

    if [ -d ${FLUTTER_ROOT}/bin/cache/dart-sdk ]; then
        export DART_SDK_HOME=${FLUTTER_ROOT}/bin/cache/dart-sdk
        export PATH=${DART_SDK_HOME}/bin:$PATH
    fi

    export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub/
    export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter
fi
