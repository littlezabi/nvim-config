return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    branch = "regexp",
    config = function()
      require("venv-selector").setup({
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
        },
        auto_refresh = true,
        search_venv_managers = true,
        search_workspace = true,
        enable_debug_output = false,
        notify_user_on_activate = true,
      })
    end,
    event = "VeryLazy",
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
      { "<leader>cc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
    },
  },
}
