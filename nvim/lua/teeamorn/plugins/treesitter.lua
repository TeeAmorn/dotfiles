return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
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
