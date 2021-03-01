#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
#添加软件依赖
#添加lua-maxminddb 依赖
git clone https://github.com/jerrykuku/lua-maxminddb.git
#添加luci-app
git clone https://github.com/jerrykuku/luci-app-vssr.git
#添加Adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome
