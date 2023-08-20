#!/bin/sh

# 一時ディレクトリを作成
mkdir -p ~/git-installation
cd ~/git-installation

# Gitの最新バージョンのソースコードを取得
curl -LO https://github.com/git/git/archive/refs/tags/v2.41.0.tar.gz

# ソースコードのアーカイブを解凍
tar xzf v2.41.0.tar.gz

# ソースコードのディレクトリに移動
cd git-2.41.0

# 依存ライブラリのインストール zshのエイリアス依存
agi build-essential
agi autoconf
agi libz-dev
agi msgfmt
agi gettext

# ソースコードをコンフィギュレーション
make configure

# コンフィギュレーションスクリプトを実行
./configure --prefix=/usr

# コンパイルとインストール
make all
sudo make install

# クリーンアップ
cd ~
rm -rf ~/git-installation

echo "Gitのインストールが完了しました。"
