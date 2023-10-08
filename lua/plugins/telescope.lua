return {
	"nvim-telescope/telescope.nvim", 
    name = "telescope",
	tag = "0.1.3",
    dependencies = { 
		"nvim-lua/plenary.nvim"
	},
    config = function()
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    end
} 
