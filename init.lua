local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
vim.g.mapleader = " "
require("lazy").setup("plugins")
require("vim-mapping")

-- settings to make neo-tree not blocke after :wq
vim.api.nvim_create_autocmd("QuitPre", {
	callback = function()
		-- Zamknij Neo-tree zanim wyjdzie z Neovim
		require("neo-tree.command").execute({ action = "close" })
	end,
})

-- setting for grovvy
vim.filetype.add({
	extension = {
		groovy = "groovy",
	},
})

-- settings for terminal xterm
vim.opt.termguicolors = true
