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

zi wait lucid light-mode for multisrc='lib/*.zsh' from=gitee.com mirrors/oh-my-zsh

zi wait lucid for \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/alias-finder/alias-finder.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/extract/extract.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/fasd/fasd.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh \
   https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/last-working-dir/last-working-dir.plugin.zsh \
   https://gitee.com/winnochan/fzf-fasd/raw/master/fzf-fasd.plugin.zsh

zi wait lucid light-mode for multisrc='shell/*.zsh' from=gitee.com mirrors/fzf

# blox theme
zi silent wait=! light-mode for from=gitee.com src=blox.zsh atload=blox_hook__render winnochan/blox-zsh-theme
# zi ice silent wait=! atload=blox_hook__render from=gitee.com src=blox.zsh; zi light winnochan/blox-zsh-theme

# 自动推荐历史命令插件
zi ice silent wait lucid atload=_zsh_autosuggest_start from=gitee.com; zi light winnochan/zsh-autosuggestions

# 大量常用命令的补全插件
# zi ice silent blockf from=gitee.com; zi light winnochan/zsh-completions
zi wait lucid light-mode for from=gitee.com winnochan/zsh-completions

# 自动括号, 引号匹配插件
zi wait lucid light-mode for from=gitee.com winnochan/zsh-autopair

# 语法高亮插件
zi wait lucid light-mode for from=gitee.com winnochan/fast-syntax-highlighting

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
