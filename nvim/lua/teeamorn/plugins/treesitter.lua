return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		-- optional: treesitter to autoclose and autorename html tag
		"windwp/nvim-ts-autotag",
		-- optional: show code context
		"nvim-treesitter/nvim-treesitter-context",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true },
			autotag = { enable = true },
			auto_install = true,
			additional_vim_regex_highlighting = false,
		})
	end,
}
