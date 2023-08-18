#!/bin/sh

# 現在位置の把握
CURRENT=$(cd $(dirname $0);pwd)
echo $CURRENT
echo $CURRENT/.zshrc ~/.zshrc
echo $CURRENT/.gitconfig ~/.gitconfig

# シンボリックリンクの作成
ln -s $CURRENT/.zshrc ~/.zshrc
ln -s $CURRENT/gitconfig ~/.gitconfig

# 確認コマンド
ls -l ~/.zshrc
ls -l ~/.gitconfig
