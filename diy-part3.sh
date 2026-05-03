#!/bin/bash
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# reg set CN
echo -e "#!/bin/sh -e\n\nsleep 10\niw reg set CN\n\nexit 0" > package/base-files/files/etc/rc.local

# hlk7628n dts
mkdir -p target/linux/ramips/dts/
cp -f "$GITHUB_WORKSPACE/scripts/dts/mt7628an_hilink_hlk-7628n.dts" "target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts"

# hlk7628n (LEDs)
# mkdir -p "target/linux/ramips/mt76x8/base-files/etc/board.d/"
# cp -f "$GITHUB_WORKSPACE/scripts/image/01_leds" "target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds"

# hlk7628n (LEDs)
mkdir -p package/kernel/mt76/
cp -f "$GITHUB_WORKSPACE/scripts/image/Makefile" "package/kernel/mt76/Makefile"

# turboacc
# curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
