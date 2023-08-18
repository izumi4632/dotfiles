# 一時ディレクトリを作成
mkdir -p ~/neovim-installation
cd ~/neovim-installation

# neovimのソースのダウンロード
curl -LO https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz
tar xzf stable.tar.gz

# ソースのディレクトリに移動
cd neovim-stable

# 依存解決
sudo apt install unzip

# makeする
sudo apt install -y cmake automake libtool libtool-bin
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# クリーンアップ
cd ~
rm -rf ~/neovim-installation

echo "neovimのインストールが完了しました。"

# macはズルする
#######################
# brew install neovim #
#######################
