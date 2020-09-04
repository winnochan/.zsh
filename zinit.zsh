declare -A ZINIT

ZINIT[HOME_DIR]=$ZSH_DIR/.zinit
ZINIT[BIN_DIR]=${ZINIT[HOME_DIR]}/bin
ZINIT[CACHE_DIR]=$ZSH_DIR/.cache/zinit
ZINIT[PLUGINS_DIR]=${ZINIT[CACHE_DIR]}/plugins
ZINIT[COMPLETIONS_DIR]=${ZINIT[CACHE_DIR]}/completions
ZINIT[SNIPPETS_DIR]=${ZINIT[CACHE_DIR]}/snippets
ZINIT[ZCOMPDUMP_PATH]=$HOME
ZINIT[COMPINIT_OPTS]='-C'
ZINIT[MUTE_WARNINGS]=1
ZINIT[OPTIMIZE_OUT_DISK_ACCESSES]=0

source ${ZINIT[BIN_DIR]}/zinit.zsh

# export ALL_PROXY=http://127.0.0.1:1087;

# blox theme
zinit ice silent from=gitee.com src=blox.zsh
zinit light winnochan/blox-zsh-theme

# 记住上次的工作目录
# zinit snippet OMZ::plugins/last-working-dir/last-working-dir.plugin.zsh

# 自动推荐历史命令插件
zinit ice silent wait lucid atload=_zsh_autosuggest_start from=gitee.com
zinit light winnochan/zsh-autosuggestions

# 快速目录跳转插件
# zinit ice silent wait'0a'
# zinit snippet OMZ::plugins/fasd/fasd.plugin.zsh

# # git命令alias插件
# zinit ice silent wait'0b'
# zinit snippet OMZ::plugins/git/git.plugin.zsh

# # 隔离每个工作目录的命令历史记录
# zinit ice silent wait'0c'
# zinit snippet OMZ::plugins/per-directory-history/per-directory-history.zsh

# oh my zsh lib config
# zinit ice silent wait=1a src='lib/*.zsh' pick=/dev/null from=gitee.com
# zinit snippet OMZL::git.zsh

# 自动括号, 引号匹配插件
zinit ice silent wait=2a from
zinit light winnochan/zsh-autopair

# # 语法高亮插件
# zinit ice silent wait'1d'
# zinit light zdharma/fast-syntax-highlighting

# # fzf 模糊文件查找工具, 延迟2秒加载
# zinit ice silent wait'2a' from"gh-r" as"program"
# zinit light junegunn/fzf-bin

# zinit ice silent wait'2b'
# zinit snippet "https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh"

# zinit ice silent wait'2c'
# zinit snippet "https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh"

# # cargo包管理工具补全插件
# zinit ice silent as"completion" wait'[[ -n ${ZLAST_COMMANDS[(r)car*]} ]]'
# # zinit ice silent wait'3a'
# zinit snippet OMZ::plugins/cargo/_cargo

# # 一键解压工具插件
# zinit ice silent wait'3b'
# zinit snippet OMZ::plugins/extract/extract.plugin.zsh

# 大量常用命令的补全插件
zinit ice silent blockf wait=3c from=gitee.com
zinit light winnochan/zsh-completions

###############################################################################
# 自定义的插件和补全
# winnochan_plugins=https://raw.githubusercontent.com/winnochan/.zsh/master/plugins
# winnochan_completions=https://raw.githubusercontent.com/winnochan/.zsh/master/completions

# zinit ice silent wait'0o'
# zinit snippet ${winnochan_plugins}/keychain.plugin.zsh

# # zinit ice silent wait'1o'
# # zinit snippet ${winnochan_plugins}/brew.plugin.zsh

# # zinit ice silent as'completion' wait'[[ -n ${ZLAST_COMMANDS[(r)rus*]} ]]'
# zinit ice silent as'completion' wait'0p'
# zinit snippet ${winnochan_completions}/_rustup
