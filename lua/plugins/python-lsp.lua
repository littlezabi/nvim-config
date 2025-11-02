return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = vim.fn.expand("~/upthyme-server/venv/bin/python"),
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                extraPaths = {
                  vim.fn.expand("~/upthyme-server"),
                  vim.fn.expand("~/upthyme-server/workshift"),
                },
              },
            },
          },
        },
      },
    },
  },
}
