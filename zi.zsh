autoload -Uz compinit

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
ZI[OPTIMIZE_OUT_DISK_ACCESSES]=0

source ${ZI[BIN_DIR]}/zi.zsh

# zi ice silent wait=0 svn multisrc='*.zsh'; zi snippet OMZ::lib
# zi ice silent svn multisrc='*.zsh'; zi snippet https://gitee.com/winnochan/ohmyzsh/trunk/lib

zi ice silent wait=0 multisrc='lib/*.zsh' from=gitee.com; zi light mirrors/oh-my-zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/alias-finder/alias-finder.plugin.zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/extract/extract.plugin.zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/fasd/fasd.plugin.zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/oh-my-zsh/raw/master/plugins/last-working-dir/last-working-dir.plugin.zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/fzf/raw/master/shell/completion.zsh

zi ice silent wait=0
zi snippet https://gitee.com/mirrors/fzf/raw/master/shell/key-bindings.zsh

zi ice silent wait=0
zi snippet https://gitee.com/winnochan/fzf-fasd/raw/master/fzf-fasd.plugin.zsh

# blox theme
zi ice silent wait=! atload=blox_hook__render from=gitee.com src=blox.zsh; zi light winnochan/blox-zsh-theme

# 自动推荐历史命令插件
zi ice silent wait=0 atload=_zsh_autosuggest_start from=gitee.com; zi light winnochan/zsh-autosuggestions

# 大量常用命令的补全插件
# zi ice silent blockf from=gitee.com; zi light winnochan/zsh-completions
zi ice silent wait=0 from=gitee.com; zi light winnochan/zsh-completions

# 自动括号, 引号匹配插件
zi ice silent wait=1a from=gitee.com; zi light winnochan/zsh-autopair

# 语法高亮插件
zi ice silent wait=1b from=gitee.com; zi light winnochan/fast-syntax-highlighting

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
