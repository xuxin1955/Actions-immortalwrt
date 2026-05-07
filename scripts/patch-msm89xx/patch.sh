#!/bin/bash
set -e

SRC="$(cd "$(dirname "$0")" && pwd)"
BASE="$(cd "$SRC/../.." && pwd)"
OPENWRT="$BASE/openwrt"

cp -r "$SRC/target/linux/msm89xx" "$OPENWRT/target/linux/"
cp -r "$SRC/package/." "$OPENWRT/package/" 2>/dev/null || true
