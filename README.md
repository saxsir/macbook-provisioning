saxsir/macbook-provisioning
===

Macの開発環境構築スクリプト

## Setup


1. Install Xcode from Mac App Store
  - [https://apps.apple.com/jp/app/xcode/id497799835](https://apps.apple.com/jp/app/xcode/id497799835/)

```
$ xcode-select --install
$ sudo xcodebuild -license
```

2. リポジトリCloneする

```
$ ssh-keygen -t rsa

...

$ cat ~/.ssh/id_rsa.pub # GitHubに鍵登録
$ git clone ssh://git@github.com/saxsir/macbook-provisioning
```

3. Dropboxのインストール

mackupのbackup先がdropboxなので先に入れておく

3. make

```
$ make
```

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

## あとこの辺やる設定

- Macのキーボードショートカット変更
    - システム環境設定 → キーボード → キーボードショートカット
        - Spotlight
            - 無効に（Raycastでやるので）
        - 入力ソース
            - ctrl + space を cmd + spaceに  
