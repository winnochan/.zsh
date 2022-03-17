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

# ohmyzsh lib
zi wait lucid light-mode for multisrc='lib/*.zsh' from=gitee.com mirrors/oh-my-zsh

# snippets
zi wait lucid for \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/alias-finder/alias-finder.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/extract/extract.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/fasd/fasd.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/last-working-dir/last-working-dir.plugin.zsh \
   https://gitee.com/winnochan/fzf-fasd/raw/master/fzf-fasd.plugin.zsh \
   https://gitee.com/mirrors/fzf/raw/master/shell/completion.zsh \
   https://gitee.com/mirrors/fzf/raw/master/shell/key-bindings.zsh \
   https://gitee.com/winnochan/zsh-autopair/raw/master/autopair.zsh

# 主题配置(blox theme)
zi ice silent wait=! atload=blox_hook__render from=gitee.com src=blox.zsh; zi light winnochan/blox-zsh-theme

# 推荐历史命令
# 常用命令补全
# 语法高亮插件
zi wait lucid light-mode for \
   atload=_zsh_autosuggest_start from=gitee.com winnochan/zsh-autosuggestions \
   from=gitee.com winnochan/zsh-completions \
   from=gitee.com winnochan/fast-syntax-highlighting

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
