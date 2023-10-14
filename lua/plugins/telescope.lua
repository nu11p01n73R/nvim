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
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>rg", builtin.live_grep, {})

        vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
        vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
        vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
    end
} 
