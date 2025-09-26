-- UI related plugins
return {
	-- Colorschemes
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				functions = { italic = false },
				variables = { italic = false },
			},
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		opts = {
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
		},
	},
	{
		"miikanissi/modus-themes.nvim",
		lazy = true,
		opts = {
			italic_comments = false,
		},
	},
	{
		"shaunsingh/nord.nvim",
		lazy = true,
		config = function()
			vim.g.nord_italic = false
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = true,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		opts = {
			styles = {
				bold = true,
				italic = false,
				transparency = false,
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},

	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = { theme = "gruvbox" },
			sections = { lualine_z = {} },
		},
	},
}

