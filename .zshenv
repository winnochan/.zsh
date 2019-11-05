export ZSH_DIR=$(dirname ${(%):-%N})
export ZSH_SYS=$(uname)

source ${ZSH_DIR}/plugins/brew.plugin.zsh
source ${ZSH_DIR}/plugins/blox-theme.plugin.zsh
source ${ZSH_DIR}/plugins/fzf.plugin.zsh
source ${ZSH_DIR}/plugins/gtags.plugin.zsh
source ${ZSH_DIR}/plugins/mac-bin.plugin.zsh
source ${ZSH_DIR}/plugins/oh-my-zsh.plugin.zsh
source ${ZSH_DIR}/plugins/rust.plugin.zsh
source ${ZSH_DIR}/plugins/zsh-autosuggestions.plugin.zsh

# base-shell config
# BASE16_SHELL="$ZSH_DIR/.base16-shell/"
# [ -n "$PS1" ] && \
#     [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
#     eval "$("$BASE16_SHELL/profile_helper.sh")"

# android sdk
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="${ANDROID_SDK_ROOT}/ndk-bundle"
export PATH="${ANDROID_SDK_ROOT}/tools/bin:$PATH"

# dart
# export PATH="$HOME/.pub-cache/bin:$PATH"

# flutter
# export PATH="$HOME/flutter/bin:$PATH"
# export PUB_HOSTED_URL="https://pub.flutter-io.cn"
# export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
# export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub/"
# export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"

# go
# export GOROOT=$HOME/.go
export GOPATH=$HOME/go
export GO111MODULE=on
export GOPROXY=https://goproxy.io,direct
export GOSUMDB=gosum.io+ce6e7565+AY5qEHUk/qmHc5btzW45JVoENfazw8LielDsaI+lEbq6
# export GOPRIVATE=*.corp.example.com
# oo
source $ZSH_DIR/.oo/env
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
# godoc color
export GODOCC_STYLE='native'

# java
if [ -d "/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home" ]; then
    export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
elif [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

# pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"
# python env var
if [ "$ZSH_SYS" = "Linux" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-shared"
elif [ "$ZSH_SYS" = "Darwin" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-framework"
fi

# vagrant
if [ "$ZSH_SYS" = "Darwin" ]; then
    export VAGRANT_DEFAULT_PROVIDER="virtualbox"
elif [ "$ZSH_SYS" = "Linux" ]; then
    export VAGRANT_DEFAULT_PROVIDER="libvirt"
fi

##################### other tools #####################
export BETTER_EXCEPTIONS=1
