return {
    { 
        "catppuccin/nvim", 
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme catppuccin-mocha")
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function() 
            require("lualine").setup({
                options = {
                    icons_enabled = false,
                    theme = "catppuccin-mocha"
                }
            })
        end
    }
}
