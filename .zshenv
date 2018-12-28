#brew
if command -v brew >/dev/null 2>&1; then
    eval $(brew shellenv)
else
    brew_base="/usr/local"
    test -f $brew_base/bin/brew && eval $($brew_base/bin/brew shellenv)
    brew_base="$HOME/.linuxbrew"
    test -f $brew_base/bin/brew && eval $($brew_base/bin/brew shellenv)
    brew_base="/home/linuxbrew/.linuxbrew"
    test -f $brew_base/bin/brew && eval $($brew_base/bin/brew shellenv)
fi

# dart
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH="$HOME/.pub-cache/bin:$PATH"

# goenv
export GOPATH="$HOME/.gopath"
export PATH="$HOME/.goenv/bin:$GOPATH/bin:$PATH"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"

# java
test -f /usr/libexec/java_home && export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
test -d /usr/local/share/android-sdk && export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
if [ -d "/Library/Java/Home" ]; then
    export JAVA_HOME="/Library/Java/Home"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
fi

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
# python env var
if [ "$(uname)" = "Linux" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-shared"
elif [ "$(uname)" = "Darwin" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-framework"
fi

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"

# scalaenv
# export PATH="$HOME/.scalaenv/bin:$PATH"

# rust cargo
cargo_env="$HOME/.cargo/env"
if [ -f "$cargo_env" ]; then
    source $cargo_env
fi
# rustup
if command -v rustup >/dev/null 2>&1; then
   rustup_default_host=$(rustup toolchain list | cut -d ' ' -f 1)
   export RUST_SRC_PATH="$HOME/.rustup/toolchains/$rustup_default_host/lib/rustlib/src/rust/src"
fi
