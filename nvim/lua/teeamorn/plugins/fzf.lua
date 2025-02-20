return {
	"ibhagwan/fzf-lua",
	config = function()
		require("fzf-lua").setup({})

		vim.keymap.set(
			"n",
			"<leader>ff",
			require("fzf-lua").files,
			{ desc = "Find files", noremap = true, silent = true }
		)
		vim.keymap.set(
			"n",
			"<leader>fs",
			require("fzf-lua").live_grep,
			{ desc = "Find string in current working directory" }
		)
		vim.keymap.set("n", "<leader>fc", require("fzf-lua").grep_cword, { desc = "Find word under cursor" })
	end,
}
