#!/bin/bash


# rm dts
sed -i '/&flash0 {/,/};/d' target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-e.dts
sed -i '/&flash0 {/,/};/d' target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826-32m.dts
sed -i '/&flash0 {/,/};/d' target/linux/ramips/dts/mt7620a_zte_q7.dts
sed -i '/&flash0 {/,/};/d' target/linux/ramips/dts/mt7620a_zbt-wr8305rt.dts

grep -r "&flash0 {" target/linux/ramips/dts/ || echo "✅ 全部清空！"

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# turboacc
curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# hlk7620A dts
mkdir -p target/linux/ramips/dts/
cp -f "$GITHUB_WORKSPACE/scripts/dts/mt7620a_zbtlink_zbt-we826.dtsi" "target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi"

