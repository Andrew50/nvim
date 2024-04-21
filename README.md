//nvim version 0.9.5
sudo apt update
sudo apt install curl
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo mv nvim-linux64/bin/nvim /usr/local/bin/
rm nvim-linux64.tar.gz
rm -r nvim-linux64
