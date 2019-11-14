if [ "$ZSH_SYS" = "Linux" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-shared"
elif [ "$ZSH_SYS" = "Darwin" ]; then
    export PYTHON_CONFIGURE_OPTS="--enable-framework"
fi
