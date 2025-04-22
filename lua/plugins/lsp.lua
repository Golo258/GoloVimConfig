return {
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "elixirls",
          "pyright",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspConfig = require("lspconfig")

      lspConfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      lspConfig.elixirls.setup({
        cmd = { vim.fn.stdpath("data") .. "/mason/bin/elixir-ls" },
        settings = {
          elixirLS = {
            dialyzerEnabled = false,
            fetchDeps = false,
          },
        },
      })

      lspConfig.pyright.setup({})

      vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
