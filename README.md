# 家庭账本 公开站点仓库

本仓库是 **家庭账本（FamilyLedger）** 的公开站点，同时服务 App Store Connect 的三个网址字段。

## 文件说明

| 文件 | 用途 |
|---|---|
| `index.html` | 首页：隐私政策 + 站点导航（App Store 的「营销网址」用这个） |
| `support.html` | 支持页：FAQ + 联系方式（App Store 的「支持网址」用这个） |
| `PRIVACY.md` | 隐私政策 Markdown 源文件，同时在 GitHub 仓库页可直接阅读 |

## ⚠️ GitHub Pages 尚未启用

仓库里已有 `index.html`，但 **Pages 还没有开启**，所以下面的地址目前返回 **404**：

```
https://chaipl.github.io/familyledger-privacy/            ← 404
https://chaipl.github.io/familyledger-privacy/support.html ← 404
```

启用步骤（仓库设置页，约 1 分钟生效）：

1. 打开 <https://github.com/ChaiPL/familyledger-privacy/settings/pages>
2. **Build and deployment → Source** 选 **Deploy from a branch**
3. **Branch** 选 `main`，**/ (root)**，保存

生效后对应关系：

| App Store Connect 字段 | 地址 |
|---|---|
| 隐私政策网址（已可用的兜底） | `https://raw.githubusercontent.com/ChaiPL/familyledger-privacy/main/PRIVACY.md` |
| 支持网址 | `https://chaipl.github.io/familyledger-privacy/support.html` |
| 营销网址 | `https://chaipl.github.io/familyledger-privacy/` |

> 「隐私政策网址」指向 raw Markdown 是**故意的**：它不依赖 Pages，随时可访问。
> 另外两个字段依赖 Pages，启用前不要填。

## 为什么不放在自己的域名

原 `cybercaishenmiao.xyz` 现已返回 `HTTP 410 Gone`，而 App Store 的审核员
会点开支持网址与营销网址 —— 410 是典型拒审理由，故改用 GitHub Pages。

## 应用隐私要点

- **无服务器架构** —— 账单不上传任何开发者服务器
- **无账号体系** —— 不需要手机号 / 邮箱
- **无内购、无订阅、无广告** —— 下载即拥有全部功能
- **无第三方 SDK** —— 无广告、无分析、无追踪
- **数据位置** —— 默认只在本机 SQLite；开启 iCloud 后进入**用户自己的** iCloud 私有数据库
- **家庭共享** —— 基于 Apple CloudKit `CKShare`，成员只能修改自己创建的账单

## 更新政策

改动请直接编辑 `index.html`、`support.html` 与 `PRIVACY.md`，提交后推送。
改完请确认链接仍然可达（`curl -I` 返回 200），再更新 App Store Connect 上的地址。

## 联系方式

支持页与本仓库共用同一个渠道：

<https://github.com/ChaiPL/familyledger-privacy/issues>
