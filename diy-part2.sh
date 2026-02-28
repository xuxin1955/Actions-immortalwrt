#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-material/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Patch OverClock
# wget https://github.com/Haris131/uz801v3-kernel/commit/fabdd0494c48f7c86ebf63f96e2a8c213ecdb96c.patch -O target/linux/msm89xx/patches-6.1/0096-overclock-msm8916.patch
# wget https://github.com/Haris131/uz801v3-kernel/commit/fabdd0494c48f7c86ebf63f96e2a8c213ecdb96c.patch -O target/linux/msm89xx/patches-6.6/0096-overclock-msm8916.patch
# wget https://github.com/Haris131/uz801v3-kernel/commit/fabdd0494c48f7c86ebf63f96e2a8c213ecdb96c.patch -O target/linux/msm89xx/patches-6.12/0096-overclock-msm8916.patch

# Patch Fix led name
# wget https://github.com/Haris131/uz801v3-kernel/commit/55fad55a0f18517d02d66003b5ec70975d46accb.patch -O target/linux/msm89xx/patches-6.1/0097-fix-led-msm8916.patch
# wget https://github.com/Haris131/uz801v3-kernel/commit/55fad55a0f18517d02d66003b5ec70975d46accb.patch -O target/linux/msm89xx/patches-6.6/0097-fix-led-msm8916.patch
# wget https://github.com/Haris131/uz801v3-kernel/commit/55fad55a0f18517d02d66003b5ec70975d46accb.patch -O target/linux/msm89xx/patches-6.12/0097-fix-led-msm8916.patch

# cat <<EOF >> target/linux/msm89xx/config-6.1

# CONFIG_BT_QCOMSMD=m
# CONFIG_QCOM_IPA=m
# EOF

# cat <<EOF >> target/linux/msm89xx/config-6.6

# CONFIG_BT_QCOMSMD=m
# CONFIG_QCOM_IPA=m
# EOF

# cat <<EOF >> target/linux/msm89xx/config-6.12

# CONFIG_BT_QCOMSMD=m
# CONFIG_QCOM_IPA=m
# EOF

# HelmiWrt packages
git clone --depth=1 https://github.com/Haris131/helmiwrt-packages package/community

#temp
git clone https://github.com/lkiuyu/luci-app-cpu-perf package/luci-app-cpu-perf
git clone https://github.com/lkiuyu/luci-app-cpu-status package/luci-app-cpu-status
git clone https://github.com/lkiuyu/luci-app-temp-status package/luci-app-temp-status
git clone https://github.com/lkiuyu/DbusSmsForwardCPlus package/DbusSmsForwardCPlus
