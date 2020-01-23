#!/usr/bin/env bash

set -e

echo "キーボード設定..."
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

echo "Dock設定..."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock wvous-br-corner -int 13 # Put display to sleep

echo "環境設定おわり（あとで再起動）"
