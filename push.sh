#!/bin/bash
set -euo pipefail

# 一键把隐私政策推到 GitHub 公开仓库。
# 前置：已在 https://github.com/new 手工创建好 ChaiPL/familyledger-privacy（Public）
#
# 用法：./push.sh

REPO="git@github.com:ChaiPL/familyledger-privacy.git"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$HERE"

echo "🔍 检查 SSH 授权"
# ⚠️ `ssh -T git@github.com` 认证成功时也返回退出码 1
#    （GitHub 固定回 "does not provide shell access"），不能交给 set -e 判定
ssh_out=$(ssh -o BatchMode=yes -o ConnectTimeout=8 -T git@github.com 2>&1 || true)
echo "  $ssh_out"
case "$ssh_out" in
  *"successfully authenticated"*) ;;
  *) echo "❌ SSH 未通过 GitHub 认证，停止推送"; exit 1 ;;
esac

if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "$REPO"
  echo "  ✅ 已添加 origin → $REPO"
fi

echo ""
echo "📤 推送 main 分支"
git push -u origin main

echo ""
echo "✅ 推送完成"
echo ""
echo "可用地址："
echo "  仓库页      https://github.com/ChaiPL/familyledger-privacy"
echo "  隐私政策    https://github.com/ChaiPL/familyledger-privacy/blob/main/PRIVACY.md"
echo ""
echo "如需更好看的页面，在仓库页点 Settings → Pages → Source 选 main / root，"
echo "启用后得到 https://chaipl.github.io/familyledger-privacy/（约 1 分钟生效）"
