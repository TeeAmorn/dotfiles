return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- configure treesitter
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			auto_install = true,
			additional_vim_regex_highlighting = false,
		})
	end,
}
