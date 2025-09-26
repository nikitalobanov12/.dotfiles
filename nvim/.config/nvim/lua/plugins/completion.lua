-- Completion and LSP
return {
	{
		"saghen/blink.cmp",
		opts = {
			completion = {
				accept = {
					auto_brackets = { enabled = false },
				},
				menu = { auto_show = true },
				ghost_text = { enabled = false },
			},
			snippet = {
				expand = function(snippet) end,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
		},
	},
}
