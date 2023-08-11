require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" }
})

local on_attach = function(_, _)
	vim.keymap('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
