# try cache brew env
__brew_cache_dir=$ZSH_DIR/.cache/brew
if [ ! -d $__brew_cache_dir ]; then
  mkdir -p $__brew_cache_dir
fi

__brew_cache_env=$__brew_cache_dir/env.zsh
if [ -f $__brew_cache_env ]; then
  source $__brew_cache_env
elif command -v brew >/dev/null 2>&1; then
  brew shellenv > $__brew_cache_env
  source $__brew_cache_env
else
  __brew_base="/opt/homebrew"
  test -f $__brew_base/bin/brew && $__brew_base/bin/brew shellenv > $__brew_cache_env
  __brew_base="/usr/local"
  test -f $__brew_base/bin/brew && $__brew_base/bin/brew shellenv > $__brew_cache_env
  __brew_base="$HOME/.linuxbrew"
  test -f $__brew_base/bin/brew && $__brew_base/bin/brew shellenv > $__brew_cache_env
  __brew_base="/home/linuxbrew/.linuxbrew"
  test -f $__brew_base/bin/brew && $__brew_base/bin/brew shellenv > $__brew_cache_env

  test -f $__brew_cache_env && source $__brew_cache_env

  unset __brew_base
fi

unset __brew_cache_dir
unset __brew_cache_env

if command -v brew >/dev/null 2>&1; then
  # if [ -f $HOME/.ssh/tokens/github-repo.token ]; then
  #     export HOMEBREW_GITHUB_API_TOKEN=$(cat $HOME/.ssh/tokens/github-repo.token)
  # fi
  if [ "$ZSH_SYS" = "Darwin" ]; then
    # export HOMEBREW_NO_AUTO_UPDATE=true
    # export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
    # export HOMEBREW_BOTTLE_DOMAIN=https://mirror.sjtu.edu.cn/homebrew-bottles/bottles
  elif [ "$ZSH_SYS" = "Linux" ]; then
    export HOMEBREW_NO_AUTO_UPDATE=true
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/linuxbrew-bottles
  fi

  __zsh_share_path=$HOMEBREW_PREFIX/share/zsh
  if [ -d $__zsh_share_path ]; then
    fpath=($__zsh_share_path/functions $__zsh_share_path/site-functions $fpath)
  fi
  unset __zsh_share_path

  __zsh_completions=$HOMEBREW_PREFIX/share/zsh-completions
  if [ -d $__zsh_completions ]; then
    fpath=($__zsh_completions $fpath)
  fi
  unset __zsh_completions

  # if [ -d ${HOMEBREW_PREFIX}/include ]; then
  #   export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/lib"
  #   export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/include"
  #   export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/lib/pkgconfig"
  # fi

  # openssl
  # if [ -d ${HOMEBREW_PREFIX}/opt/openssl ]; then
  #   export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
  #   export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/openssl/lib"
  #   export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/openssl/include"
  #   export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/openssl/lib/pkgconfig"
  # fi

  # node@10
  # if [ -d ${HOMEBREW_PREFIX}/opt/node@10 ]; then
  #     export PATH="${HOMEBREW_PREFIX}/opt/node@10/bin:$PATH"
  #     export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/node@10/lib"
  #     export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/node@10/include"
  # fi

  # sqlite3
  # if [ -d ${HOMEBREW_PREFIX}/opt/sqlite ]; then
  #     export PATH="${HOMEBREW_PREFIX}/opt/sqlite/bin:$PATH"
  #     export LDFLAGS="$LDFLAGS -L${HOMEBREW_PREFIX}/opt/sqlite/lib"
  #     export CPPFLAGS="$CPPFLAGS -I${HOMEBREW_PREFIX}/opt/sqlite/include"
  #     export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/sqlite/lib/pkgconfig"
  # fi

  # mysql
  # if [ -d ${HOMEBREW_PREFIX}/opt/mysql@5.7 ]; then
  #    export PATH="${HOMEBREW_PREFIX}/opt/mysql@5.7/bin:$PATH"
  # fi

  # ccache
  # if command -v ccache >/dev/null 2>&1; then
  #     export PATH="${HOMEBREW_PREFIX}/opt/ccache/libexec:$PATH"
  # fi

  # if [ -d $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk ]; then
  #     export GOOGLE_CLOUD_SDK_HOME="$HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
  #     if [ -d $GOOGLE_CLOUD_SDK_HOME ]; then
  #         source $GOOGLE_CLOUD_SDK_HOME/path.zsh.inc
  #         source $GOOGLE_CLOUD_SDK_HOME/completion.zsh.inc
  #     fi
  # fi

  # mono
  # export MONO_GAC_PREFIX="${HOMEBREW_PREFIX}"

  # llvm
  # if [ -d ${HOMEBREW_PREFIX}/opt/llvm ]; then
  #     export PATH=${HOMEBREW_PREFIX}/opt/llvm/bin:$PATH
  # fi
fi
