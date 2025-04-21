return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local treesitterconfig = require("nvim-treesitter.configs")
    treesitterconfig.setup(
      {
        ensure_installed = {
          'c',
          'lua',
          'elixir',
          'javascript',
          'html'
        },
        highlight = { enable = true },
        indent = { enable = true }
      }
    )
  end
}
