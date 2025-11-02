return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          -- Exclude common files
          "%.json$",
          "%.lock$",
          "%.pyc$",
          "%.sqlite3$",
          "%.jpg$",
          "%.jpeg$",
          "%.png$",
          "%.svg$",
          "%.gif$",
          "%.webp$",
          "%.pdf$",
          -- Exclude directories
          "node_modules/",
          ".git/",
          ".venv/",
          "venv/",
          "__pycache__/",
          "migrations/",
          ".pytest_cache/",
          ".mypy_cache/",
          "htmlcov/",
          "dist/",
          "build/",
          "*.egg-info/",
          -- Django specific
          "staticfiles/",
          "media/",
          "locale/",
          "*.mo$",
          "*.pot$",
        },
        -- Additional settings for better search
        hidden = false,
        respect_gitignore = true,
      },
      pickers = {
        find_files = {
          hidden = false,
          follow = false,
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--glob", "!**/.git/*" }
          end,
        },
      },
    },
  },
}
