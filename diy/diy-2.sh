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
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 移除重复软件包
#rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-passwall/
rm -rf feeds/packages/net/xray-core/
rm -rf feeds/packages/net/xray-plugin/

# Modify default theme
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# 添加额外软件包
# git clone --depth 1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
# git clone --depth 1 https://github.com/Jason6111/luci-app-netdata package/luci-app-netdata
# git clone --depth 1 -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/luci-app-passwall-packages

# Add packages
#git clone -b js https://github.com/gngpp/luci-theme-design package/luci-theme-design
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#git clone https://github.com/messense/aliyundrive-webdav package/aliyundrive-webdav
#git clone https://github.com/sirpdboy/netspeedtest package/homebox
#git clone https://github.com/destan19/OpenAppFilter package/openappfilter
#rm -rf feeds/packages/net/open-app-filter

# Modify default WiFi SSID
#sed -i 's/ImmortalWrt-2.4G/Xiaomi_203/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
#sed -i 's/ImmortalWrt-5G/Xiaomi_203-5G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
#sed -i 's/MT7981_AX3000_2.4G/Xiaomi_203/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
#sed -i 's/MT7981_AX3000_5G/Xiaomi_203-5G/g' package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat

# Use WACPU/WOCPU NEW FW
#sed -i 's/mt7981-fw-20230306/mt7981-fw-20230411/g' package/mtk/drivers/mt_wifi/Makefile
#sed -i 's/mt7981-fw-20230411/mt7981-fw-20230330/g' package/mtk/drivers/warp/Makefile

# Add OpenClash DEV/TUN core
#cd ./feeds/luci/applications/luci-app-openclash/root/etc/openclash/
#mkdir ./core && cd ./core
#curl -sfL -o ./dev.tar.gz https://github.com/vernesong/OpenClash/raw/core/dev/dev/clash-linux-arm64.tar.gz
#tar -zxf ./dev.tar.gz
#curl -sfL -o ./clash_tun.gz https://github.com/vernesong/OpenClash/raw/core/dev/premium/clash-linux-arm64-2023.08.17-13-gdcc8d87.gz
#gzip -d clash_tun.gz
#curl -sfL -o ./meta.tar.gz https://github.com/vernesong/OpenClash/raw/core/dev/meta/clash-linux-arm64.tar.gz
#tar -zxf ./meta.tar.gz && mv -f clash clash_meta
#chmod +x ./clash* ; rm -rf ./*.gz
