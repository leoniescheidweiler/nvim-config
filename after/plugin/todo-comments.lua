require("todo-comments").setup{}

local todo = require("todo-comments")
vim.keymap.set("n", "]t", function()
	todo.jump_next({"TODO", "ERROR"})
end, {desc = "Next todo comments"})
vim.keymap.set("n", "[t", function()
	todo.jump_prev({"TODO", "ERROR"})
end, {desc = "Previous todo comments"})
