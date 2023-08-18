# 一時ディレクトリを作成
mkdir -p ~/tmux-installation
cd ~/tmux-installation

# tmuxのソースのダウンロード
curl -LO https://github.com/tmux/tmux/releases/download/2.9/tmux-2.9.tar.gz
yum -y install gcc libevent-devel ncurses-devel
tar -zxvf tmux-2.9.tar.gz
cd tmux-2.9
./configure
make
make install

# クリーンアップ
cd ~
rm -rf ~/tmux-installation

echo "tmuxのインストールが完了しました。"
