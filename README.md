# Personal Neovim Config

## Fix for failed to fetch mason registry
As stated [here](https://github.com/williamboman/mason.nvim/issues/1549#issuecomment-2079415294) this can be fixed by downgrading to an older neovim version.
```
git clone https://github.com/neovim/neovim.git
cd neovim
git reset --hard a4fc3bb
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```
