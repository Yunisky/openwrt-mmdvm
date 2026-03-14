# GL.iNet MT3000 - MMDVM 预编译包

## 设备信息

- 型号：GL.iNet GL-MT3000
- 目标平台：`mediatek/mt7981`
- 架构：`aarch64_cortex-a53`
- 固件基线：OpenWrt 21.02 系列

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

## 附加脚本

- 仓库根目录 `update-dmrids.sh`：手动更新 DMR ID 数据
- 仓库根目录 `dmrid-update-onboot.init`：开机自动更新
