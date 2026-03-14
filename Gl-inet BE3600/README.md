# GL.iNet BE3600 - MMDVM 预编译包

## 设备信息

- 型号：GL.iNet BE3600
- SoC：Qualcomm IPQ5332
- 架构：`aarch64_cortex-a53_neon-vfpv4`
- 固件基线：OpenWrt 23.05 系列

## 包来源与说明

- MMDVM feed：`https://github.com/lazywalker/mmdvm-openwrt`
- 编译环境：OpenWrt SDK 23.05.5（aarch64/cortex-a53）
- 本目录为 BE3600 可用的预编译包集合。

## 目录内容

- `mmdvm` / `mmdvm-host`
- `mmdvm-luci` / `mmdvm-luci-i18n-zh-cn`
- 相关依赖包（`libmmdvm`、`libwxwidgets`、`ircddb-gateway`、`ysf-clients`、`nxdn-clients`、`p25-clients`、`dapnet-gateway`）
- `sha256sums.txt`：文件校验

## 安装示例

将本目录 `.ipk` 上传至路由器 `/tmp` 后执行：

```sh
cd /tmp
opkg install ./libwxwidgets_3.0-6_aarch64_cortex-a53.ipk \
             ./libmmdvm_1.2.0-1_aarch64_cortex-a53.ipk \
             ./mmdvm-host_1.3.2-1_aarch64_cortex-a53.ipk \
             ./mmdvm_1.0.7-1_aarch64_cortex-a53.ipk \
             ./mmdvm-luci_1.2.0-4_aarch64_cortex-a53.ipk \
             ./mmdvm-luci-i18n-zh-cn_1.2.0-4_all.ipk
```
