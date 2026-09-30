# 家庭账本 隐私政策仓库

本仓库存放 **家庭账本（FamilyLedger）** 的隐私政策，用于 App Store Connect 的「隐私政策网址」字段。

## 文件说明

| 文件 | 用途 |
|---|---|
| `index.html` | GitHub Pages 渲染用，访问 <https://chaipl.github.io/familyledger-privacy/> |
| `PRIVACY.md` | Markdown 源文件，同时在 GitHub 仓库页可直接阅读 |

## 应用隐私要点

- **无服务器架构** —— 账单不上传任何开发者服务器
- **无账号体系** —— 不需要手机号 / 邮箱
- **无第三方 SDK** —— 无广告、无分析、无追踪
- **数据位置** —— 默认只在本机 SQLite；开启 iCloud 后进入**用户自己的** iCloud 私有数据库
- **家庭共享** —— 基于 Apple CloudKit `CKShare`，成员只能修改自己创建的账单

## 更新政策

改动请直接编辑 `index.html` 与 `PRIVACY.md` 两份文件后提交（两份内容需保持一致），
并同步更新页面顶部的「生效日期」。

## 联系方式

<https://github.com/ChaiPL/familyledger-privacy/issues>
