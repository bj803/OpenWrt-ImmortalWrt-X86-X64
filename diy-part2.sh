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
# Add the default password for the 'root' user（Change the empty password to 'password'）
sed -i 's/root:::0:99999:7:::/root:$1$qTM.tEk0$J0I9VtO1JT99G4R2iZKaA.::0:99999:7:::/g' package/base-files/files/etc/shadow
# sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$qTM.tEk0$J0I9VtO1JT99G4R2iZKaA.:18858:0:99999:7:::/g' package/lean/default-settings/files/zzz-default-settings

# 修改默认主题
# sed -i "s/luci-theme-bootstrap/luci-theme-ifit/g" feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 替换终端为bash
#sed -i 's/\/bin\/ash/\/bin\/bash/' package/base-files/files/etc/passwd

# Set etc/openwrt_release
# sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION='R$(date +%Y.%m.%d)'|g" package/base-files/files/etc/openwrt_release
# echo "DISTRIB_SOURCECODE='immortalwrt'" >>package/base-files/files/etc/openwrt_release

# Modify default IP（FROM 192.168.1.1 CHANGE TO 192.168.31.4）
# sed -i 's/192.168.1.1/192.168.31.4/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.111.5/g' package/base-files/files/bin/config_generate

# 修改机器名称
sed -i "s/ImmortalWrt/HomeImm111/g" package/base-files/files/bin/config_generate
# Modify default IP
# sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
# sed -i 's/Bootstrap/argon/g' feeds/luci/collections/luci/Makefile
# sed -i 's/Bootstrap/argon/g' feeds/luci/modules/luci-base/root/etc/config/luci
# sed -i '/uci commit luci/i\uci set luci.main.mediaurlbase="/luci-static/argon"' `find package -type f -path '*/default-settings/files/zzz-default-settings'`


# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
sed -i 's/content="${explain}${header}"/content="${content}${explain}${header}"/g' /usr/share/wechatpush/wechatpush
