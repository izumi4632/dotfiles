#!/bin/sh

# 現在位置の把握
CURRENT=$(cd $(dirname $0);pwd)
echo $CURRENT
echo $CURRENT/.zshrc ~/.zshrc
echo $CURRENT/.gitconfig ~/.gitconfig

# シンボリックリンクの作成
unlink ~/.zshrc
ln -s $CURRENT/.zshrc ~/.zshrc
unlink ~/.gitconfig
ln -s $CURRENT/.gitconfig ~/.gitconfig
unlink ~/.tmux.conf
ln -s $CURRENT/.tmux.conf ~/.tmux.conf

# 確認コマンド
ls -l ~/.zshrc
ls -l ~/.gitconfig
ls -l ~/.tmux.conf
