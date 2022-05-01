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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add Custom feeds source
echo 'src-git Lienol https://github.com/Lienol/openwrt-package.git' >>feeds.conf.default
echo 'src-git ssrplus https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git OpenClash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default
echo 'src-git maxminddb https://github.com/jerrykuku/lua-maxminddb.git' >>feeds.conf.default
echo 'src-git helloworld https://github.com/jerrykuku/luci-app-vssr.git' >>feeds.conf.default
echo 'src-git bypass https://github.com/kiddin9/openwrt-bypass' >>feeds.conf.default

git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/lean/passwall

# Add & Replace theme source
rm -rf package/lean/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

# Add unblockneteasemusic
git clone --depth=1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/lean/UnblockMusic

# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

