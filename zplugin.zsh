declare -A ZPLGM

ZPLGM[CACHE_DIR]=$ZSH_DIR/.cache/zplugin
ZPLGM[HOME_DIR]=$ZSH_DIR/.zplugin
ZPLGM[BIN_DIR]=${ZPLGM[HOME_DIR]}/bin
ZPLGM[PLUGINS_DIR]=${ZPLGM[CACHE_DIR]}/plugins
ZPLGM[COMPLETIONS_DIR]=${ZPLGM[CACHE_DIR]}/completions
ZPLGM[SNIPPETS_DIR]=${ZPLGM[CACHE_DIR]}/snippets
ZPLGM[ZCOMPDUMP_PATH]=$HOME
ZPLGM[COMPINIT_OPTS]='-C'
ZPLGM[MUTE_WARNINGS]=1

source ${ZPLGM[BIN_DIR]}/zplugin.zsh

export ALL_PROXY=http://127.0.0.1:1087;

# blox theme
zplugin ice silent pick'async.zsh' src'blox.zsh'
zplugin light yardnsm/blox-zsh-theme

# 记住上次的工作目录
zplugin snippet OMZ::plugins/last-working-dir/last-working-dir.plugin.zsh

# 自动推荐历史命令插件
zplugin ice silent wait atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

# 快速目录跳转插件
zplugin ice silent wait'0a'
zplugin snippet OMZ::plugins/fasd/fasd.plugin.zsh

# git命令alias插件
zplugin ice silent wait'0b'
zplugin snippet OMZ::plugins/git/git.plugin.zsh

# 隔离每个工作目录的命令历史记录
zplugin ice silent wait'0c'
zplugin snippet OMZ::plugins/per-directory-history/per-directory-history.zsh

# oh my zsh lib config
zplugin ice silent svn wait '1a' multisrc'*.zsh' pick'/dev/null'
zplugin snippet OMZ::lib

# alias提示插件
zplugin ice silent wait'1b'
zplugin light djui/alias-tips

# 语法高亮插件
zplugin ice wait'1d' silent
zplugin light zdharma/fast-syntax-highlighting

# 自动括号, 引号匹配插件
zplugin ice silent wait'1e'
zplugin light hlissner/zsh-autopair

# fzf 模糊文件查找工具, 延迟2秒加载
zplugin ice silent wait'2a' from"gh-r" as"program"
zplugin light junegunn/fzf-bin

zplugin ice silent wait'2b'
zplugin snippet "https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh"

zplugin ice silent wait'2c'
zplugin snippet "https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh"

# cargo包管理工具补全插件
zplugin ice silent as"completion" wait'[[ -n ${ZLAST_COMMANDS[(r)car*]} ]]'
# zplugin ice silent wait'3a'
zplugin snippet OMZ::plugins/cargo/_cargo

# 一键解压工具插件
zplugin ice silent wait'3b'
zplugin snippet OMZ::plugins/extract/extract.plugin.zsh

# 大量常用命令的补全插件
zplugin ice silent blockf wait'3c'
zplugin light zsh-users/zsh-completions

###############################################################################
# 自定义的插件和补全
winnochan_plugins=https://raw.githubusercontent.com/winnochan/.zsh/master/plugins
winnochan_completions=https://raw.githubusercontent.com/winnochan/.zsh/master/completions

zplugin ice silent wait'0o'
zplugin snippet ${winnochan_plugins}/keychain.plugin.zsh

# zplugin ice silent wait'1o'
# zplugin snippet ${winnochan_plugins}/brew.plugin.zsh

# zplugin ice silent as'completion' wait'[[ -n ${ZLAST_COMMANDS[(r)rus*]} ]]'
zplugin ice silent as'completion' wait'0p'
zplugin snippet ${winnochan_completions}/_rustup
