return { 
    "tpope/vim-fugitive", 
    name = "fugitive",
    config = function() 
        vim.keymap.set("n", "<leader>gs", function() vim.cmd("vertical G") end)
    end
}
