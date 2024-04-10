return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		require("telescope").setup({ pickers = { find_files = { hidden = true } } })

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files", noremap = true, silent = true })
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in current working directory" })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent files" })
		vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor" })
		vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
