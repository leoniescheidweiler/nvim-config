require("trouble").setup{}

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle lsp_references<CR>", {silent = true, noremap = true})

-- Open Telescope search results in Trouble
local trouble = require("trouble.sources.telescope")
local telescope = require("telescope")
local actions = telescope.actions

telescope.setup{
	defaults = {
		mappints = {
			n = {["<c-t>"] = trouble.open},
			i = {["<c-t>"] = trouble.open},
		},
	},
}
