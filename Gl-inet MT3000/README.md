# GL.iNet MT3000 - MMDVM 预编译套件

- 型号：GL.iNet GL-MT3000
- 目标平台：mediatek/mt7981
- 架构：aarch64_cortex-a53
- 固件：OpenWrt 21.02-SNAPSHOT
- 内核：5.4.211

## 内容
- mmdvm / mmdvm-host
- mmdvm-luci / mmdvm-luci-i18n-zh-cn
- 依赖包（libmmdvm/libwxwidgets/ircddb-gateway 等）
- sha256sums.txt

## 额外脚本
- `../update-dmrids.sh`：手动更新本地 DMRIds 映射库
- `../dmrid-update-onboot.init`：开机自动触发更新
