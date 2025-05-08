return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	opts = {
		servers = {
			lua_ls = {},
			ts_ls = {},
		},
	},
	config = function(_, opts)
		local lspconfig = require("lspconfig")

		-- Enable inline diagnostics
		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			update_in_insert = true,
		})

		-- Attach blink completion capabilities to each server
		for server, config in pairs(opts.servers) do
			-- passing config.capabilities to blink.cmp merges with the capabilities in your
			-- `opts[server].capabilities, if you've defined it
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end

		-- Attach the on_attach function to each server
		local on_attach = function(_, bufnr)
			vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename, { buffer = bufnr, desc = "Smart rename" })
			vim.keymap.set(
				"n",
				"<leader>d",
				vim.diagnostic.open_float,
				{ buffer = bufnr, desc = "Show line diagnostics" }
			)
		end

		for server, config in pairs(opts.servers) do
			config.on_attach = on_attach
			lspconfig[server].setup(config)
		end
	end,
}
