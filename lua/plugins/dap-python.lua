return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      -- Use your project's venv python
      local venv_python = vim.fn.expand("~/upthyme-server/venv/bin/python")
      -- Check if the venv python exists, otherwise fall back
      if vim.fn.filereadable(venv_python) == 1 then
        require("dap-python").setup(venv_python)
      else
        -- Fallback to system python or auto-detect
        require("dap-python").setup("python")
      end
    end,
  },
}
