local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug ('neoclide/coc.nvim', { branch = 'release'})

Plug 'neovim/nvim-lspconfig'

Plug 'vim-erlang/vim-erlang-compiler'


vim.call('plug#end')
