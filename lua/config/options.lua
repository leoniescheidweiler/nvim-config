local options = {
	-- Line numbers
	number = true,
	-- Scrolling
	scrolloff = 8,
	-- Search
	hlsearch = true,
	incsearch = true,
	showmatch = true,
	ignorecase = true,
	smartcase = true,
	-- Indentation
	list = false,
	listchars = "tab:>-,trail:.,lead:.",
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = false,
}

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = {"*.py"},
	callback = function()
		local options_py = {
			tabstop = 8,
			shiftwidth = 2,
			smarttab = true,
			expandtab = true,
			softtabstop = 0,
		}

		for k, v in pairs(options_py) do
			vim.opt[k] = v
		end
	end
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = {"*.f90"},
	callback = function()
		local options_f90 = {
			tabstop = 8,
			shiftwidth = 3,
			smarttab = true,
			expandtab = true,
			softtabstop = 0,
		}

		for k, v in pairs(options_f90) do
			vim.opt[k] =  v
		end
	end
})

for k, v in pairs(options) do
	vim.opt[k] = v
end
