# vagrant
if [ "$ZSH_SYS" = "Darwin" ]; then
    export VAGRANT_DEFAULT_PROVIDER="virtualbox"
elif [ "$ZSH_SYS" = "Linux" ]; then
    export VAGRANT_DEFAULT_PROVIDER="libvirt"
fi
