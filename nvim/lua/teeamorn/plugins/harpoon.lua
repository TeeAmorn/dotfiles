return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add buffer to Harpoon" })

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Open Harpoon menu" })

		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():select(1)
		end, { desc = "Go to first Harpoon buffer" })

		vim.keymap.set("n", "<C-j>", function()
			harpoon:list():select(2)
		end, { desc = "Go to second Harpoon buffer" })
		vim.keymap.set("n", "<C-k>", function()
			harpoon:list():select(3)
		end, { desc = "Go to third Harpoon buffer" })

		vim.keymap.set("n", "<C-l>", function()
			harpoon:list():select(4)
		end, { desc = "Go to forth Harpoon buffer" })
	end,
}
