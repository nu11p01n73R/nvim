return {
    "hrsh7th/nvim-cmp",
    name = "nvim completion",
    depednecies = {
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            sources = {
                { name = "nvim_lsp" },
            },

            mapping = {
                ['<C-y>'] = cmp.mapping.confirm({select = false}),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
                ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
            }
        })
    end
}
