if command -v proxychains4 >/dev/null 2>&1; then
  proxychains4 wget -O $ZSH_DIR/xray/geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
  proxychains4 wget -O $ZSH_DIR/xray/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
else
  wget -O $ZSH_DIR/xray/geoip.dat https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat
  wget -O $ZSH_DIR/xray/geosite.dat https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat
fi
