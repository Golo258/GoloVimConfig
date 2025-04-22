return {
	{
		"tpope/vim-fugitive",
		config = function()
			-- Vim Mapps for commit managmenet
			local git_mappings = {
				["<leader>git a"] = { ":Git add .<CR>", "Git Add All" },
				["<leader>git st"] = { ":Git<CR>", "Git Status" },
				["<leader>git c"] = { ":Git commit<CR>", "Git Commit" },
				["<leader>git p"] = { ":Git push<CR>", "Git Push" },
				["<leader>git pf"] = { ":Git push --force<CR>", "Git Push Force" },
				["<leader>git pu"] = { ":Git push -u origin HEAD<CR>", "Git Push Set-Upstream" },
				["<leader>git br"] = { ":!git branch --show-current<CR>", "Show Current Branch" },
				["<leader>git d"] = { ":Gdiffsplit<CR>", "Git Diff Current File" },
				["<leader>git s"] = { ":Git stash<CR>", "Git Stash" },
				["<leader>git sa"] = { ":Git stash apply<CR>", "Git Stash Apply" },
				["<leader>git b"] = { ":Gblame<CR>", "Git Blame" },
				["<leader>git l"] = { ":Git log<CR>", "Git Log" },
				["<leader>git cb"] = { ":Git checkout -b ", "Git Checkout -b" },
			}

			for keys, map in pairs(git_mappings) do
				vim.keymap.set("n", keys, map[1], { desc = map[2] })
			end
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				vim.keymap.set("n", "<leader>gitp", ":Gitsigns preview_hunk<CR>", {}),
				vim.keymap.set("n", "<leader>gitb", ":Gitsigns toggle_current_line_blame<CR>", {}),
			})
		end,
	},
}
