require("lsp_lines").setup()

-- Disable virtual_text since it is redundant due to lsp_lines
vim.diagnostic.config({
	virtual_text = false,
})
