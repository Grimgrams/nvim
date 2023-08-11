-- Require
require('plugins/packer')
--require('plugins/plug')
require("config/keymaps")
--require("startup").setup({theme = "dashboard"}) -- put theme name here
require('packer.luarocks').install_commands()
require('config/lspconfig')
require('config/completions')
--require('lspconfig').erlang_ls.setup{}
--require("config/startup")
local custom_gruvbox = require'lualine.themes.gruvbox'


-- Theme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.c.bg = '#112233'

require('lualine').setup {
  options = { theme  = custom_gruvbox },
}
-- neotree autoclose/open
vim.g.neotree_auto_close = 1
vim.g.neotree_auto_close = 1

-- Set number
vim.cmd[[set number]]
vim.cmd [[
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'
]]
