require("nvim-treesitter.configs").setup{
	ensure_installed = {"c", "python", "lua", "fortran"},
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
}

vim.cmd("TSUpdate")
