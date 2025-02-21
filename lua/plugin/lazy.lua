-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"--single-branch",
	"https://github.com/folke/lazy.nvim.git",
	lazypath,
})
end
vim.opt.runtimepath:prepend(lazypath)

-- run lazy
require("lazy").setup({
	{
		-- colorscheme
		"folke/tokyonight.nvim",
	},
	{
		-- fuzzy finder for files
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- optional
			"nvim-telescope/telescope-fzy-native.nvim", -- optional
			"nvim-telescope/telescope-file-browser.nvim", -- optional
		},
	},
	{
		-- display a popup with possible key bindings of the command
		-- you started typing
		"folke/which-key.nvim",
	},
	{
		--  A blazing fast and easy to configure neovim statusline
		--  plugin written in pure lua.
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	},
	{
		-- treesitter
		"nvim-treesitter/nvim-treesitter",
	},
	{
		-- undotree
		"mbbill/undotree",
	},
	{
		-- Fugitive is the premier Vim plugin for Git.
		"tpope/vim-fugitive",
	},
	{
		-- language server
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			-- Snippets
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		-- clangd's extra features (inlay hints, type hierarchy, etc)
		-- for C and C++
		"p00f/clangd_extensions.nvim",
	},
	{
		-- A pretty list for showing diagnostics, references, telescope
		-- results, quickfix and location lists to help you solve all
		-- the trouble your code is causing.
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	},
	{
		url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	},
	{
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		-- add indentation guides to all lines (including empty lines)
		"lukas-reineke/indent-blankline.nvim",
	},
	{
		-- autopair plugin that supports multiple character
		"windwp/nvim-autopairs",
	},
	{
		-- linter
		"mfussenegger/nvim-lint"
	},
	{
		-- formatter
		"mhartington/formatter.nvim"
	},
	{
		-- debugger
		"mfussenegger/nvim-dap"
	},
})
