return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",

				color_overrides = {
					all = {
						base = "#1a1b26",
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
