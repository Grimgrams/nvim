# nvim

## Required
* Lua
* [Luarocks](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix)
* Hererocks
  ```bash
  $ pip install hererocks
  ```
* *Packer*
```bash
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
* *Plug*
```bash
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
