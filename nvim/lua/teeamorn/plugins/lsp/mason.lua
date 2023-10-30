return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"tsserver",
				"html",
				"cssls",
				"pyright",
				"rust_analyzer",
				"bashls",
				"gopls",
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			"prettier", -- prettier formatter
			"stylua", -- lua formatter
			"isort", -- python formatter
			"black", -- python formatter
			"pylint", -- python linter
			"eslint_d", -- js linter
			"shellcheck", -- bash linter
			"shfmt", -- bash formatter
		})
	end,
}
