local options = {
	number = true,
	scrolloff = 8
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
