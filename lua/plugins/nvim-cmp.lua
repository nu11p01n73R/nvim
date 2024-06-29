return {
    "hrsh7th/nvim-cmp",
    name = "nvim completion",
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            sources = {
                { name = "nvim_lsp" },
            }
        })
    end
}
