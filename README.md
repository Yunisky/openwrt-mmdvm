# openwrt-mmdvm

OpenWrt + MMDVM 预编译产物仓库（含 x86 完整固件与 GL.iNet 设备包）。

## 目录结构

- `x86/`：基于 OpenWrt 25.12 的 x86/64 **完整固件镜像**（可直接刷写）
- `Gl-inet BE3600/`：BE3600 可用的 MMDVM 相关 `.ipk` 包
- `Gl-inet MT3000/`：MT3000 可用的 MMDVM 相关 `.ipk` 包
- `luci/`：MMDVM LuCI 页面资源（dashboard、lastheard、css 等）
- `update-dmrids.sh`：DMR ID 数据更新脚本
- `dmrid-update-onboot.init`：开机自动更新 DMR ID 的 init 脚本

## 本次新增（x86）

已新增 OpenWrt 25.12 x86/64 完整镜像到 `x86/`，包含 MMDVM 相关组件。

## 使用建议

- x86 虚拟机/工控机部署：优先使用 `x86/openwrt-x86-64-generic-squashfs-combined-efi.img.gz`
- 老 BIOS 环境可用非 `-efi` 版本
- 写盘/导入前先核对 `x86/sha256sums`

## 校验

在仓库根目录执行：

```bash
cd x86
sha256sum -c sha256sums
```

## 说明

- x86 构建中对 LuCI 相关包采用 `mmdvm-luci` 聚合方案，避免与拆分包（`luci-app-mmdvm` / `luci-theme-bootstrap-mmdvm`）文件冲突。
- GL.iNet 目录为设备定制包，不同设备间不要混装。
