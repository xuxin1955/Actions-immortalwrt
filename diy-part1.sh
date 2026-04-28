#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall2' >>feeds.conf.default

# echo 'src-git modemfeed https://github.com/koshev-msk/modemfeed' >>feeds.conf.default
# echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default


# OpenClash
# git clone --depth 1 https://github.com/vernesong/OpenClash.git OpenClash

# turboacc
curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# 调试
# sed -i 's|src-git-full openstick https://github.com/lkiuyu/openstick-feeds.git|src-git-full openstick https://github.com/xuxin1955/openstick-feeds|g' feeds.conf.default



