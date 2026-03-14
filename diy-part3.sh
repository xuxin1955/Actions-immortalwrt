#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# hlk7628n dts
# mkdir -p target/linux/ramips/dts/
# cp -f "$GITHUB_WORKSPACE/dts/mt7628an_hilink_hlk-7628n.dts" target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts


# turboacc
# curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh --no-sfe

# temp
git clone https://github.com/lkiuyu/luci-app-temp-status package/luci-app-temp-status

