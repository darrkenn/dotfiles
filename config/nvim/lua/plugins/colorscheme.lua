return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				dim_inactive_windows = false,
				extend_background_behind_borders = false,
				enable = {
					terminal = true,
					migrations = true,
				},
				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},
			})
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "rose-pine",
		},
	},
}
