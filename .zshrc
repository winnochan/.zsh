# export LANG="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

# zmodload zsh/zprof

# source $ZSH_DIR/zplugin.zsh
# source $ZSH_DIR/zgen.zsh

# source $ZSH_DIR/plugins/brew.plugin.zsh
# source $ZSH_DIR/plugins/blox-theme.plugin.zsh
# source $ZSH_DIR/plugins/flutter.plugin.zsh
# source $ZSH_DIR/plugins/fzf.plugin.zsh
# source $ZSH_DIR/plugins/gtags.plugin.zsh
# source $ZSH_DIR/plugins/java.plugin.zsh
# source $ZSH_DIR/plugins/keychain.plugin.zsh
# source $ZSH_DIR/plugins/miniconda.plugin.zsh
# source $ZSH_DIR/plugins/oh-my-zsh.plugin.zsh
# source $ZSH_DIR/plugins/rust.plugin.zsh
# source $ZSH_DIR/plugins/zsh-autosuggestions.plugin.zsh

# source $ZSH_DIR/custom.zsh
# source $ZSH_DIR/alias.zsh

# source $ZSH_DIR/plugins/asdf.plugin.zsh

# checking the cached .zcompdump once a day
# autoload -Uz compinit
# for dump in $HOME/.zcompdump(N.mh+24); do
#   compinit
# done
# compinit -C

# autoload -Uz compinit
# if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
#   compinit
# else
#   compinit -C
# fi

# autoload -Uz compinit
# if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
#   compinit
#   touch .zcompdump
# else
#   compinit -C
# fi

# autoload -Uz compinit

() {
  if [[ $# -gt 0 ]]; then
    compinit
  else
    compinit -C
  fi
} ${ZDOTDIR:-$HOME}/.zcompdump(N.mh+24)

{
  # Compile zcompdump, if modified, to increase startup speed.
  zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
  if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    zcompile "$zcompdump"
  fi
} &!

# zprof
