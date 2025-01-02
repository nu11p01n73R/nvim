return {
    "williamboman/mason-lspconfig.nvim",
    name = "mason LSP config",
    dependencies = {
        { "williamboman/mason.nvim", lazy = false }
    },

    config = function ()
        local mason_config = require("mason-lspconfig")

        -- Install and setup LSP servers
        mason_config.setup({
            ensure_installed = {
                "lua_ls",
                "pyright",
                "vtsls",
            },
        })

        -- Code navigation using LSP
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
        vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    end
}
