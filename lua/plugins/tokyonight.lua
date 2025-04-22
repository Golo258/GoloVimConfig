return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyonight-moon") -- Mozesz zmienic na: storm / night / day / moon
  end,
}
