//nvim version 0.9.5
sudo apt-get update
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
git clone https://github.com/neovim/neovim
cd neovim
git checkout v0.9.5
make CMAKE_BUILD_TYPE=Release
sudo make install
mdkir ~/.config/nvim
cd ~/.config/nvim
git clone https://github.com/Andrew50/nvim.git .
mkdir -p ~/.local/share/nvim/site/pack/packer/start
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
launch nvim
:PackerSync
