return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    require('lualine').setup({
       options = {
         vim.cmd.colorscheme "catppuccin"
        }
      }
    )
     end
}
