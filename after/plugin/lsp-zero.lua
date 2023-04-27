vim.opt.signcolumn = 'yes' -- reserve space for diagnostic icons

local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.nvim_workspace()
lsp.setup()
