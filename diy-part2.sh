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
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile

# Patch OverClock
wget https://github.com/Haris131/linux-msm/commit/bfbe1ebeb1df2bcfd8a04addde787f1abc00d914.patch -O target/linux/msm89xx/patches-6.1/0096-overclock-msm8916.patch
wget https://github.com/Haris131/linux-msm/commit/bfbe1ebeb1df2bcfd8a04addde787f1abc00d914.patch -O target/linux/msm89xx/patches-6.12/0096-overclock-msm8916.patch
wget https://github.com/Haris131/linux-msm/commit/bfbe1ebeb1df2bcfd8a04addde787f1abc00d914.patch -O target/linux/msm89xx/patches-6.16/0096-overclock-msm8916.patch
