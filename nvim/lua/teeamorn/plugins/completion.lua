return {
	"saghen/blink.cmp",
	version = "*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		completion = {
			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind" } },
				},
			},
			ghost_text = {
				enabled = true,
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 0,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},

		signature = { enabled = true },
	},
}
