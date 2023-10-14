return { 
    "tpope/vim-fugitive", 
    name = "fugitive",
    config = function() 
        vim.keymap.set("n", "<leader>gs", function() vim.cmd("vertical G") end)
        vim.keymap.set("n", "<leader>gd", function() vim.cmd("Gvdiffsplit!") end)
        vim.keymap.set("n", "<leader>gbl", function() vim.cmd("G blame") end)
        vim.keymap.set("n", "<leader>gP", function() vim.cmd("G push") end)

        -- Populate command line
        vim.keymap.set("n", "<leader>gp", ":G pull")
        vim.keymap.set("n", "<leader>gc", ":G checkout")
    end
}
