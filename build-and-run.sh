#!/bin/bash

# エラーがあった場合に即終了
set -e

echo "📦 Misskey の依存関係をインストール中..."
pnpm install

echo "🔧 フロントエンドをビルド中..."
pnpm run build

echo "🚀 Misskey サーバーを起動します..."
NODE_ENV=production pnpm start
