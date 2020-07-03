# dart
if [ -d $HOME/.pub-cache ]; then
    export PATH="$HOME/.pub-cache/bin:$PATH"
fi

# flutter
if [ -d $ZSH_CACHE/flutter ]; then
    export FLUTTER_HOME=$ZSH_CACHE/flutter

    export PATH="$FLUTTER_HOME/bin:$PATH"

    if [ -d $FLUTTER_HOME/bin/cache/dart-sdk ]; then
        export DART_SDK_HOME=$FLUTTER_HOME/bin/cache/dart-sdk
        export PATH="${DART_SDK_HOME}/bin:$PATH"
    fi

    # export PUB_HOSTED_URL="https://pub.flutter-io.cn"
    # export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
    export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub/"
    export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"
fi
