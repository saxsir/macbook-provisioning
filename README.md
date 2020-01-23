saxsir/macbook-provisioning
===

Macの開発環境構築スクリプト

## Setup


1. Install Xcode from Mac App Store
  - [https://developer.apple.com/jp/xcode/downloads/](https://developer.apple.com/jp/xcode/downloads/)

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

* cask使ってたけど更新ラグと二重管理がつらかったのでAppStoreで必要なやつ入れる

### とりあえず最初に入れとくやつ
- Alfred
- Deckset
- Dash
- LastPass
- Slack
- TweetDeck
- Spectacle
- Karabiner
- Docker for Mac
- Todoist
