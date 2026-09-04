# Homebrew で入れるものはこのファイルが唯一の正 (dotfiles 側には置かない)。
# 依存で入るライブラリは書かない (brew bundle dump の出力を貼らない)。
# 追加は `brew bundle add <formula>` か手で追記する。

# dotfiles (chezmoi) 本体と、dotfiles が前提にするもの
brew "chezmoi"
brew "age"             # chezmoi の secret 暗号化 (age-keygen も同梱)
brew "starship"        # プロンプト
brew "mise"            # 言語ランタイム / CLI バージョン管理 (~/.config/mise/config.toml)
brew "direnv"          # プロジェクト単位の環境変数。devbox は core に無いので curl で別途導入
brew "pre-commit"      # dotfiles の secretlint hook
brew "oven-sh/bun/bun" # secretlint を bunx で動かす
brew "node"            # mise 外の system node を触るツール向け

# シェル / CLI (zshrc の関数・alias が依存)
brew "zsh"
brew "coreutils"       # GNU date 等。~/.zsh/macos.rc.zsh で gnubin を PATH に追加
brew "peco"
brew "fzf"
brew "ghq"
brew "cmatrix"
brew "lv"
brew "tree"
brew "watch"
brew "wget"
brew "nkf"
brew "jq"
brew "yq"
brew "ripgrep"         # nvim mini.pick の grep_live も使う
brew "ast-grep"        # 構文木ベースの検索・置換

# エディタ / ファイラ
brew "neovim"          # $EDITOR / alias vim='nvim'
brew "vim"
brew "yazi"
brew "lua-language-server" # nvim の Lua LSP

# ターミナル多重化
brew "tmux"
brew "reattach-to-user-namespace" # tmux から macOS のクリップボードを触る

# Git / GitHub
brew "git"
brew "git-lfs"         # dot_gitconfig.tmpl の [filter "lfs"] required = true
brew "gh"
brew "jj"              # Jujutsu (git 互換の VCS)
brew "k1LoW/tap/git-wt" # git wt <branch> で worktree 作成 / 切り替え
brew "crit"            # crit skill (dotfiles の apm.yml) が呼ぶ CLI
brew "actionlint"      # GitHub Actions workflow の lint (homebrew/core にある)

# AWS
brew "awscli"
brew "aws-vault"       # cask ではなく formula (dotfiles 側の判断に揃えた)
brew "aws-sam-cli"

# クラウド / データ基盤
brew "hashicorp/tap/terraform"
brew "oauth2l"         # OAuth2 アクセストークン取得 CLI
cask "gcloud-cli"

# コンテナ / VM
brew "docker"
brew "docker-buildx"
brew "docker-compose"
brew "docker-credential-helper"
brew "lima"            # claude-vm alias
brew "colima"          # lima 上の Docker ランタイム (Docker Desktop の代わり)
brew "qemu"

# 開発ツール
brew "gcc"
brew "protobuf"
cask "microsoft-openjdk"
brew "pipenv"
brew "pipx"
brew "poetry"
brew "yarn"
brew "php-cs-fixer"
brew "percona-toolkit"
brew "mysql-client"
brew "duckdb"
brew "nmap"
brew "imagemagick"
brew "ffmpeg"
brew "perl"
brew "firebase-cli"
brew "bitwarden-cli"
cask "godot"

# ターミナルフォント (~/.config/ghostty/config で Moralerspace Neon JPDOC を指定)
# Moralerspace = Monaspace + IBM Plex Sans JP の等幅派生。-jpdoc は「」、。等の全角記号を JP 側で描画する
cask "font-moralerspace-jpdoc"
# Moralerspace の JPDOC が拾わない ①②③ を全角描画するため (font-codepoint-map で使用)。同じ IBM Plex Sans JP なので字形が揃う
cask "font-ibm-plex-sans-jp"
cask "font-monaspace"      # Moralerspace の元になった等幅フォント
cask "font-plemol-jp-nf"   # Nerd Font のアイコンが要る場面向け
