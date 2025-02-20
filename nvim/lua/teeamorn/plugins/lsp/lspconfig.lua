return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp", "williamboman/mason-lspconfig.nvim" },
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		local capabilities = require("blink.cmp").get_lsp_capabilities()

		mason_lspconfig.setup_handlers({
			-- default handler for installed servers
			function(server_name)
				print(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
	end,
}
