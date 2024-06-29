return {
    "neovim/nvim-lspconfig",
    name = "lsp-config",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        require("mason-lspconfig").setup()

        require("lspconfig").lua_ls.setup {}
    end
}
