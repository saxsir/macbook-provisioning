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

3. make

```
$ make
```

---
## アプリケーションは手動インストール

* cask使ってたけどアップデートの反映ラグと二重管理がつらかったので管理外で必要なやつを入れる

### AppStore
- LastPass
- bitwarden
- Slack
- TweetDeck
- Todoist

### 個別
- Alfred
- Google Chrome
- Deckset
- Dash
- Spectacle
- Karabiner
- Docker for Mac
- Dropbox
