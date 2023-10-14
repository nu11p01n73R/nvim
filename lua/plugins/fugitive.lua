return { 
    "tpope/vim-fugitive", 
    name = "fugitive",
    config = function() 
        vim.keymap.set("n", "<leader>g", function() vim.cmd("vertical G") end)
    end
}
