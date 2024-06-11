return {
	"nvim-telescope/telescope-file-browser.nvim",
    dependencies = { 
        "nvim-telescope/telescope.nvim", 
        "nvim-lua/plenary.nvim" 
    },
    config = function() 
        require("telescope").load_extension('file_browser')

        vim.keymap.set("n", "<leader>bf", function() vim.cmd("Telescope file_browser") end)
        -- Reveal current file location
        vim.keymap.set("n", "<leader>rf", function() vim.cmd("Telescope file_browser path=%:p:h select_buffer=true") end)
    end
}
