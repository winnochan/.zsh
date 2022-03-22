declare -A ZI

ZI[HOME_DIR]=$ZSH_DIR/.zi
ZI[BIN_DIR]=${ZI[HOME_DIR]}/bin
ZI[CACHE_DIR]=$ZSH_DIR/.cache/zi
ZI[PLUGINS_DIR]=${ZI[CACHE_DIR]}/plugins
ZI[COMPLETIONS_DIR]=${ZI[CACHE_DIR]}/completions
ZI[SNIPPETS_DIR]=${ZI[CACHE_DIR]}/snippets
ZI[ZCOMPDUMP_PATH]=$HOME
ZI[COMPINIT_OPTS]='-C'
ZI[MUTE_WARNINGS]=1
ZI[OPTIMIZE_OUT_DISK_ACCESSES]=1

source ${ZI[BIN_DIR]}/zi.zsh

# ohmyzsh lib and plugins
# fzf and fasd
# 常用命令补全
# 括号配对插件
# 语法高亮插件
# 推荐历史命令

if [ "$ZSH_SYS" = "Darwin" ]; then

  zi silent wait lucid light-mode for \
     multisrc='lib/*.zsh plugins/{alias-finder,extract,fasd,git,last-working-dir}/*.plugin.zsh' \
     from=gitee.com mirrors/oh-my-zsh \
     from=gitee.com winnochan/fzf-fasd \
     multisrc='shell/*.zsh' from=gitee.com mirrors/fzf \
     from=gitee.com winnochan/zsh-completions \
     from=gitee.com winnochan/zsh-autopair \
     from=gitee.com winnochan/fast-syntax-highlighting \
     from=gitee.com winnochan/zsh-autosuggestions

  zi silent lucid light-mode for from=gitee.com winnochan/blox-zsh-theme

elif [ "$ZSH_SYS" = "Linux" ]; then

  zi silent wait lucid light-mode for \
     multisrc='lib/*.zsh plugins/{alias-finder,extract,fasd,git,last-working-dir}/*.plugin.zsh' \
     from=gitee.com mirrors/oh-my-zsh \
     from=gitee.com winnochan/fzf-fasd \
     multisrc='shell/*.zsh' from=gitee.com mirrors/fzf \
     from=gitee.com winnochan/zsh-completions \
     from=gitee.com winnochan/zsh-autopair \
     from=gitee.com winnochan/fast-syntax-highlighting \
     atload=_zsh_autosuggest_start from=gitee.com winnochan/zsh-autosuggestions

  zi silent lucid light-mode for from=gitee.com winnochan/blox-zsh-theme

fi

# 主题配置(blox theme), 异步
# zi silent wait=! lucid light-mode for \
#    atload=blox_hook__render from=gitee.com winnochan/blox-zsh-theme

# 主题配置(blox theme), 同步
# zi silent lucid light-mode for from=gitee.com winnochan/blox-zsh-theme

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
