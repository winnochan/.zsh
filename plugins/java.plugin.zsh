if [ -f ~/.tool-versions ]; then
    __java_version=$(cat ~/.tool-versions | grep java | cut -d ' ' -f 2)
    export JAVA_HOME=$HOME/.asdf/installs/java/$__java_version
    export PATH=$JAVA_HOME/bin:$PATH
    export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
    unset __java_version
elif [ $ZSH_SYS = 'Darwin' ]; then
    __android_home=/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home
    if [ -d $__android_home ]; then
        export JAVA_HOME=$__android_home
        export PATH=$JAVA_HOME/bin:$PATH
        export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
    fi
    unset __android_home
fi

# android sdk
if [ -d $HOME/Library/Android/sdk ]; then
    export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
    export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk-bundle
    export PATH=$ANDROID_SDK_ROOT/tools/bin:$PATH
fi
