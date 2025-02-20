return {
	"williamboman/mason.nvim",
	dependencies = { "WhoIsSethDaniel/mason-tool-installer.nvim", "williamboman/mason-lspconfig.nvim" },
	config = function()
		local mason = require("mason")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({})

		local mason_tool_installer = require("mason-tool-installer")
		mason_tool_installer.setup({
			auto_update = true,
			ensure_installed = {
				-- LSP
				"lua_ls",
				"ts_ls",

				-- LINTER
				"eslint_d", -- javascript/typescript linter

				-- FORMATTER
				"stylua", -- lua formatter
				"prettier", -- prettier formatter
			},
		})
	end,
}
