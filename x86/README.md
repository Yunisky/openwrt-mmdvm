# x86 (OpenWrt 25.12) 完整固件

本目录为 OpenWrt 25.12 x86/64 完整固件构建产物，已包含 MMDVM 相关组件。

## 文件说明

- `openwrt-x86-64-generic-squashfs-combined-efi.img.gz`：推荐（UEFI）
- `openwrt-x86-64-generic-squashfs-combined.img.gz`：推荐（Legacy BIOS）
- `openwrt-x86-64-generic-ext4-combined-efi.img.gz`：ext4 rootfs（UEFI）
- `openwrt-x86-64-generic-ext4-combined.img.gz`：ext4 rootfs（Legacy BIOS）
- `openwrt-x86-64-generic-targz-combined-efi.img.gz`：targz rootfs（UEFI）
- `openwrt-x86-64-generic-targz-combined.img.gz`：targz rootfs（Legacy BIOS）
- `openwrt-x86-64-generic.manifest`：镜像内包清单
- `sha256sums`：镜像校验值

## 快速校验

```bash
sha256sum -c sha256sums
```

## 刷写提示

- 虚拟机（UEFI）优先选 `squashfs-combined-efi`
- 老主板/传统 BIOS 选非 `-efi` 文件
- 首次启动建议扩容根分区并修改管理口令
