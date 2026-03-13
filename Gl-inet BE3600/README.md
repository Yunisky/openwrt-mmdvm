# GL.iNet BE3600 - MMDVM 预编译包

## 设备信息
- 型号：GL.iNet BE3600
- SoC：Qualcomm IPQ5332 (AP-MI04.1-C2)
- 架构：`aarch64_cortex-a53_neon-vfpv4`
- 固件：`OpenWrt 23.05-SNAPSHOT`
- 内核：`5.4.213`
- LuCI：`Master git-25.231.52382-62e675d`

## 包来源与说明
- MMDVM feed：`https://github.com/lazywalker/mmdvm-openwrt`
- 编译环境：OpenWrt SDK 23.05.5（aarch64/cortex-a53）
- 本目录包已做架构标记适配，可在 BE3600 上安装并验证通过。

## 目录内容
- `mmdvm` / `mmdvm-host`
- `mmdvm-luci` / `mmdvm-luci-i18n-zh-cn`
- 相关依赖包（如 `libmmdvm`、`libwxwidgets` 等）
- `sha256sums.txt`：文件校验值

## 安装示例
在路由器上将本目录 `*.ipk` 上传到 `/tmp` 后执行：

```sh
cd /tmp
opkg install ./libwxwidgets_3.0-6_aarch64_cortex-a53.ipk \
             ./libmmdvm_1.2.0-1_aarch64_cortex-a53.ipk \
             ./mmdvm-host_1.3.2-1_aarch64_cortex-a53.ipk \
             ./mmdvm_1.0.7-1_aarch64_cortex-a53.ipk \
             ./mmdvm-luci_1.2.0-4_aarch64_cortex-a53.ipk \
             ./mmdvm-luci-i18n-zh-cn_1.2.0-4_all.ipk
```

如遇依赖缺失，可先 `opkg update` 后再安装。
