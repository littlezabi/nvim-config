return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                -- Django-specific settings
                extraPaths = {},
              },
            },
          },
        },
      },
    },
  },
  -- Configure formatters
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black", "isort" },
      },
    },
  },
  -- Configure linters
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "ruff" },
      },
    },
  },
}
