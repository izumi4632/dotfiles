# 一時ディレクトリを作成
mkdir -p ~/neovim-installation
cd ~/neovim-installation

# neovimのソースのダウンロード
curl -LO https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz
tar xzf stable.tar.gz

# ソースのディレクトリに移動
cd neovim-stable

# 依存解決 zshのエイリアス依存
agi gettext
agi unzip

# makeする
agi -y cmake automake libtool libtool-bin
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# クリーンアップ
cd ~
_ rm -rf ~/neovim-installation

# macはズルする
#######################
# brew install neovim #
#######################
