saxsir/macbook-provisioning
===

Macの開発環境構築スクリプト

## Setup

### Xcode
1. Install Xcode from Mac App Store
  - [https://developer.apple.com/jp/xcode/downloads/](https://developer.apple.com/jp/xcode/downloads/)

### Homebrew
```
$ xcode-select --install #GUIでウィンドウが表示されるのでライセンスを読んでインストールする
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
$ brew update
```

### Ansible
```
$ brew install ansible
```

### SSH key
```
$ ssh-keygen -t rsa
$ cat .ssh/id_rsa.pub #コピーしてGitHubに登録
```

## Provision
```
$ git clone git@github.com:saxsir/macbook-provisioning.git ~/.macbook-provisioning
$ cd ~/.macbook-provisioning
$ make install
```

---
## 個人的に追加でやってる作業

### App Storeから手作業でインストール
- Dash 3
- Deckset
- Drop'n'Roll
- Kobito
- LastPass
- LINE
- Memory Clean
- Skitch
- Slack
- TweetDeck
- WiFi Explorer
- Rest

### dotfilesを設置
```
$ git clone git@github.com:saxsir/dotfiles.git ~/.dotfiles
$ cd .dotfiles
$ ./install.sh OS=mac
$ vim ~/.gitconfig
# username, emailを編集
```

### 手動でインストール
- nodebrew
    - See https://github.com/hokaccha/nodebrew
