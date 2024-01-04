local options = {
	number = true,
	scrolloff = 8,

	tabstop = 8, -- display tab character as 8 spaces
	expandtab = true, -- expand tab character into spaces
	shiftwidth = 4, -- use 4 space indents
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
