return {
  -- Enable Python LSP
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       pyright = {},
  --     },
  --   },
  -- },

  -- Formatters and Linters
  -- {
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = {
  --       python = { "black", "isort" },
  --     },
  --   },
  -- },

  -- Enable the Python extra
  { import = "lazyvim.plugins.extras.lang.python" },
}
