return {
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

