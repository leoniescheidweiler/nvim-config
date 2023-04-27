local opts = {noremap = true, silent = true}
local mapkey = vim.api.nvim_set_keymap

-- Leader
mapkey("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode
mapkey("n", "<leader><Esc>", ":nohlsearch<CR>", opts)
