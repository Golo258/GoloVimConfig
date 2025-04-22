return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				integrations = {
					lualine = true,
					neotree = true,
					dap = true,
					cmp = true,
					treesitter = true,
					native_lsp = {
						enabled = true,
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin-lualine",
		config = function()
			require("lualine").setup({
				options = {
					theme = "catppuccin",
				},
			})
		end,
		dependencies = { "nvim-lualine/lualine.nvim" },
	},
}
