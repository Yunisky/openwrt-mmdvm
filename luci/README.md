# LuCI 自定义页面与样式

本目录包含 MMDVM 相关 LuCI 前端资源：

- `dashboard.htm`：状态面板
- `lastheard.htm` / `lh.htm`：通联记录页面
- `mmdvm.css`：页面样式

## 用途

用于替换或定制路由器上的 MMDVM LuCI 展示层（仅前端资源）。

## 部署说明（示例）

将文件放入设备对应 LuCI 路径（通常在 `/usr/lib/lua/luci/view/...` 或 `/www/luci-static/...`），然后重启 uhttpd：

```sh
/etc/init.d/uhttpd restart
```

> 注意：不同包版本目录结构可能不同，部署前请先在设备上确认目标路径。
