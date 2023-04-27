require("telescope").setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require("telescope").load_extension("fzy_native")
require("telescope").load_extension("file_browser")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>gf", builtin.live_grep, {})
local file_browser = require("telescope").extensions.file_browser
vim.keymap.set("n", "<leader>fb", file_browser.file_browser)
