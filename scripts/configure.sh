#!/usr/bin/env bash
# macOS defaults はこのファイルが唯一の正 (dotfiles の ~/.macos は廃止)

set -eu

echo "[configure] applying macOS defaults..."

# ============================================================
# 外観
# ============================================================
# 外観を Dark に固定
defaults write NSGlobalDomain AppleInterfaceStyle -string 'Dark'

# ============================================================
# キーボード
# ============================================================
# キーリピート開始までの遅延 (15 = ~225ms)
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# キーリピート速度を最速に (2 = ~30ms)
defaults write NSGlobalDomain KeyRepeat -int 2

# ============================================================
# Dock
# ============================================================
# Dock を自動的に隠す (画面領域を確保)
defaults write com.apple.dock autohide -bool true
# Dock を左端に配置
defaults write com.apple.dock orientation -string left
# 最近使ったアプリを Dock に表示しない
defaults write com.apple.dock show-recents -bool false
# 右下ホットコーナーでディスプレイをスリープ
defaults write com.apple.dock wvous-br-corner -int 13

# ============================================================
# Finder
# ============================================================
# 全ての拡張子を表示 (.txt 等を隠さない)
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# 拡張子変更時の警告ダイアログを抑止
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# ============================================================
# Screenshot
# ============================================================
# スクリーンショット保存先を ~/Pictures/Screenshots に集約
mkdir -p "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# ============================================================
# Safari (開発者向け)
# ============================================================
# 開発メニューと内部デバッグメニューを表示
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# ============================================================
# cmux
# ============================================================
# cmux.json スキーマ外の beta フラグはここで固定する (schema 内の設定は
# dot_config/cmux/private_cmux.json 側で管理)。domain は com.cmuxterm.app。
defaults write com.cmuxterm.app "customSidebars.beta.enabled" -bool true
defaults write com.cmuxterm.app "rightSidebar.beta.dock.enabled" -bool true
defaults write com.cmuxterm.app "rightSidebar.beta.feed.enabled" -bool true

# ============================================================
# 反映 (該当プロセスを再起動)
# ============================================================
for app in "Dock" "Finder" "SystemUIServer"; do
  killall "${app}" >/dev/null 2>&1 || true
done

echo "[configure] done. Safari は手動再起動が必要な場合あり。"
