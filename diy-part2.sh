#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

#修改默认IP
sed -i 's/192.168.10.1/192.168.10.20/g' package/base-files/files/bin/config_generate
#修改默认密码
sed -i 's@root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::@root:$1$lDEBNXNf$a3kW2SvrqRB3NuL10ZG4e/:0:0:99999:7:::@g' package/lean/default-settings/files/zzz-default-settings
#选择内核
#sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.0/g' target/linux/x86/Makefile
#sed -i "s/.*PKG_VERSION:=.*/PKG_VERSION:=4.3.9_v1.2.14/" package/lean/qBittorrent-static/Makefile
#sed -i "s/.*PKG_VERSION:=.*/PKG_VERSION:=5.0.0-stable/" package/libs/wolfssl/Makefile
# welcome test
