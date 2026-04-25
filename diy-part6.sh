#!/bin/bash


# hlk7628dna dts
mkdir -p target/linux/ramips/dts/
cp -f "$GITHUB_WORKSPACE/scripts/dts/mt7628an_hilink_hlk-7628d.dts" "target/linux/ramips/dts/mt7628an_hilink_hlk-7628d.dts"

# hlk7628dna mk
mkdir -p target/linux/ramips/image/
cp -f "$GITHUB_WORKSPACE/scripts/image/mt76x8.mk" "target/linux/ramips/image/mt76x8.mk"

# hlk7628dna board.d
mkdir -p target/linux/ramips/mt76x8/base-files/etc/board.d && cp -f "$GITHUB_WORKSPACE/scripts/board.d/02_network" target/linux/ramips/mt76x8/base-files/etc/board.d/02_network




# turboacc
# curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
