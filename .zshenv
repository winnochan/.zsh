export ZSH_DIR=$(dirname ${(%):-%N})
export ZSH_SYS=$(uname)

# oh-my-zsh
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_UPDATE="true"

# base-shell config
BASE16_SHELL="$ZSH_DIR/.base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
    eval "$("$BASE16_SHELL/profile_helper.sh")"

# brew
brew_env_cache=$ZSH_DIR/.brewenv.zsh
if [ -f $brew_env_cache ]; then
    source $brew_env_cache
elif command -v brew >/dev/null 2>&1; then
    brew shellenv > $brew_env_cache
    source $brew_env_cache
else
    brew_base="/usr/local"
    test -f $brew_base/bin/brew && $brew_base/bin/brew shellenv > $brew_env_cache
    brew_base="$HOME/.linuxbrew"
    test -f $brew_base/bin/brew && $brew_base/bin/brew shellenv > $brew_env_cache
    brew_base="/home/linuxbrew/.linuxbrew"
    test -f $brew_base/bin/brew && $brew_base/bin/brew shellenv > $brew_env_cache

    test -f $brew_env_cache && source $brew_env_cache
fi

# anaconda3
# if [ "$ZSH_SYS" = "Darwin" ]; then
#     export ANACONDA3_HOME="/anaconda3"
#     export PATH="$ANACONDA3_HOME/bin:$PATH"
# else
#     export ANACONDA3_HOME="$HOME/anaconda3"
#     export PATH="$ANACONDA3_HOME/bin:$PATH"
# fi

# android sdk
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="${ANDROID_SDK_ROOT}/ndk-bundle"
export PATH="${ANDROID_SDK_ROOT}/tools/bin:$PATH"

# dart
export PATH="$HOME/.pub-cache/bin:$PATH"

# flutter
export PATH="$ZSH_DIR/.flutter/bin:$PATH"
# export PUB_HOSTED_URL="https://pub.flutter-io.cn"
# export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub/"
export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"

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

# jenv
export PATH="$HOME/.jenv/bin:$PATH"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"

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
export PATH="$HOME/.pyenv/bin:$PATH"
# python env var
if [ "$ZSH_SYS" = "Linux" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-shared"
elif [ "$ZSH_SYS" = "Darwin" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-framework"
fi

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"

# scalaenv
# export PATH="$HOME/.scalaenv/bin:$PATH"

# rust mirror
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup

# rust cargo
cargo_env="$HOME/.cargo/env"
if [ -f "$cargo_env" ]; then
    source $cargo_env
fi

# rustup
if command -v rustup >/dev/null 2>&1; then
    export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

    # export RUSTUP_DIST_SERVER="https://mirrors.ustc.edu.cn/rust-static"
    # export RUSTUP_UPDATE_ROOT="https://mirrors.ustc.edu.cn/rust-static/rustup"
fi

# vagrant
if [ "$ZSH_SYS" = "Darwin" ]; then
    export VAGRANT_DEFAULT_PROVIDER="virtualbox"
elif [ "$ZSH_SYS" = "Linux" ]; then
    export VAGRANT_DEFAULT_PROVIDER="libvirt"
fi

##################### other tools #####################
export BETTER_EXCEPTIONS=1
