return { 
    "catppuccin/nvim", 
    name = "catppuccin",
    priority = 1000,
    config = function()
        local catppuccin = require("catppuccin")

        catppuccin.setup({
            flavour = "auto",
            background = {
                light = "latte",
                dark = "mocha",
            },
            integrations = {
                treesitter = true
            }
        })

        vim.cmd("colorscheme catppuccin")
    end
}


