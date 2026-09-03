#!/usr/bin/env bash

scripts/configure.sh
echo

# Install homebrew: https://brew.sh/
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew bundle
echo

# gh extension を install (make ghext で install していた dotfiles 側の処理を引き取った)
# gh 未認証だと install が API アクセスで失敗するため、その場合はスキップして通知だけする
if command -v gh >/dev/null 2>&1; then
  if gh auth status >/dev/null 2>&1; then
    if gh extension list 2>/dev/null | grep -q "github/gh-stack"; then
      echo "[ghext] already installed: github/gh-stack"
    else
      gh extension install github/gh-stack
    fi
  else
    echo "[ghext] gh が未認証のためスキップ (gh auth login 後に gh extension install github/gh-stack)"
  fi
fi
echo

# TODO. Install aws ssm plugin

scripts/initialize.sh
echo

echo "設定終わったよ！"
