#!/bin/bash
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-material/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# reg set CN
echo -e "#!/bin/sh -e\n\nsleep 10\niw reg set CN\n\nexit 0" > package/base-files/files/etc/rc.local

# temp
git clone https://github.com/lkiuyu/luci-app-cpu-perf package/luci-app-cpu-perf
git clone https://github.com/lkiuyu/luci-app-cpu-status package/luci-app-cpu-status
git clone https://github.com/gSpotx2f/luci-app-cpu-status-mini package/luci-app-cpu-status-mini
git clone https://github.com/lkiuyu/luci-app-temp-status package/luci-app-temp-status

# DbusSmsForwardCPlus
git clone https://github.com/lkiuyu/DbusSmsForwardCPlus package/DbusSmsForwardCPlus







