#!/bin/bash

# turboacc
curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# temp
git clone https://github.com/gSpotx2f/luci-app-temp-status package/luci-app-temp-status
git clone https://github.com/gSpotx2f/luci-app-cpu-perf package/luci-app-cpu-perf

# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git OpenClash

# luci-app-airoha-npu
if [ ! -d "package/luci-app-airoha-npu" ]; then
    git clone https://github.com/rchen14b/luci-app-airoha-npu package/luci-app-airoha-npu
fi




