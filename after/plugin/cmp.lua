local cmp = require("cmp")

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({select = false}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitely selected items.
	}),
	sources = cmp.config.sources({
		{name = "nvim_lsp"},
		{name = "luasnip"},
	}, {
		{name = "buffer"},
	})
})

-- Set configuration for specific filetypes
--
-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({"/", "?"}, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{name = "buffer"}
	}
})
-- Use cmdline & path source for `:` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{name = "path"}
	}, {
		{name = "cmdline"}
	})
})
