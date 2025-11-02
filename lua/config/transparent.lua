return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
        },
    },
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    -- Apply transparency after colorscheme loads
    {
        "LazyVim/LazyVim",
        opts = function()
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "*",
                callback = function()
                    local hl_groups = {
                        "Normal",
                        "NormalNC",
                        "NormalFloat",
                        "FloatBorder",
                        "SignColumn",
                        "TelescopeNormal",
                        "TelescopeBorder",
                        "NvimTreeNormal",
                        "NvimTreeNormalNC",
                        "EndOfBuffer",
                        "MsgArea",
                    }
                    for _, name in ipairs(hl_groups) do
                        vim.cmd(string.format("highlight %s ctermbg=none guibg=none", name))
                    end
                end,
            })
        end,
    },
}
