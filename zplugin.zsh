export ZPLUGIN_DIR=$ZSH_DIR/.zplugin
source $ZPLUGIN_DIR/zplugin.zsh

export all_proxy=http://${PROXY_IP}:${PROXY_PORT};
# zplugin snippet OMZ::plugins/cargo/cargo.plugin.zsh
# zplugin snippet OMZ::plugins/extract/extract.plugin.zsh
# zplugin snippet OMZ::plugins/fasd/fasd.plugin.zsh
# zplugin snippet OMZ::plugins/git/git.plugin.zsh
# zplugin snippet OMZ::plugins/last-working-dir/last-working-dir.plugin.zsh
# zplugin snippet OMZ::plugins/per-directory-history/per-directory-history.plugin.zsh

zplugin light djui/alias-tips

# for blox theme
zplugin ice pick"async.zsh" src"blox.zsh"
zplugin light yardnsm/blox-zsh-theme

# fzf
# zplugin ice from"gh-r" as"program"
# zplugin load junegunn/fzf-bin
# zplugin snippet "https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh"
# zplugin snippet "https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh"

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light hlissner/zsh-autopair
zplugin light zsh-users/zsh-syntax-highlighting
