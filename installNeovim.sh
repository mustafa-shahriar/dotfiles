sudo apt install cmake gettext lua5.1 liblua5.1-0-dev

git clone --depth 1 --branch master git@github.com:neovim/neovim.git $HOME/neovim
cd $HOME/neovim
git checkout stable


make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
