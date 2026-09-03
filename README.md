saxsir/macbook-provisioning
===

Macの開発環境構築スクリプト

## 役割

このリポジトリは OS 層 (Xcode Command Line Tools、Homebrew と Brewfile、
macOS defaults、gh extension) のセットアップを担う。dotfiles とそれを
読んで動くもの (chezmoi apply / mise / apm) は saxsir/dotfiles が担う。

Homebrew のパッケージ一覧はこのリポジトリの Brewfile が唯一の正。
新規マシンではこのリポジトリを先に実行する (dotfiles 単体では
bootstrap しない)。

## Setup

1. Install Xcode from Mac App Store
  - [https://apps.apple.com/jp/app/xcode/id497799835](https://apps.apple.com/jp/app/xcode/id497799835/)

```
$ xcode-select --install
$ sudo xcodebuild -license
```

2. SSH 鍵を作って GitHub に登録し、リポジトリを clone する

```
$ ssh-keygen -t rsa

...

$ cat ~/.ssh/id_rsa.pub # GitHubに鍵登録
$ git clone git@github.com:saxsir/macbook-provisioning.git
```

3. make

```
$ make
```

## make で起きること

1. `scripts/configure.sh` で macOS defaults を適用する
2. Homebrew を導入する (未導入の場合)
3. `brew bundle` で Brewfile のパッケージを入れる
4. gh extension (github/gh-stack) を導入する (gh が認証済みの場合)
5. `~/src/github.com/saxsir/dotfiles` を clone し、`make -C` で dotfiles
   側の `make` を実行する

`make update` で Homebrew の update / upgrade / cleanup を行う。

---
## アプリケーションは手動インストール

* cask使ってたけどアップデートの反映ラグと二重管理がつらかったので管理外で必要なやつを入れる

### AppStore

- Bitwarden
- Slack
- ScreenBrush
- Xcode

### 個別

- Raycast
  - [https://www.raycast.com/](https://www.raycast.com/)
- Google Chrome
  - [https://www.google.co.jp/chrome/](https://www.google.co.jp/chrome/)
- Dash
  - [https://kapeli.com/dash](https://kapeli.com/dash)
- Karabiner
  -  [https://karabiner-elements.pqrs.org](https://karabiner-elements.pqrs.org)
- Dropbox
  - [https://www.dropbox.com/ja/install](https://www.dropbox.com/ja/install)
- Krisp
  - [https://krisp.ai](https://krisp.ai)
- Todoist
  - [https://todoist.com/ja/downloads](https://todoist.com/ja/downloads)
- JetBrains Toolbox
  - [https://www.jetbrains.com/ja-jp/toolbox-app/](https://www.jetbrains.com/ja-jp/toolbox-app/) 

---

## あとでやる設定

- Macのキーボードショートカット変更
    - システム環境設定 → キーボード → キーボードショートカット
        - Spotlight
            - 無効に（Raycastでやるので）
        - 入力ソース
            - ctrl + space を cmd + spaceに  
