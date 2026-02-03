#!/bin/bash

# turboacc
# curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh --no-sfe
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# mode
echo 'src-git QModem https://github.com/FUjr/QModem' >> feeds.conf.default

# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git OpenClash


# temp
git clone https://github.com/gSpotx2f/luci-app-cpu-status package/luci-app-cpu-status
git clone https://github.com/gSpotx2f/luci-app-temp-status package/luci-app-temp-status
