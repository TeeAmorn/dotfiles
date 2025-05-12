vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- save file
keymap.set({ "n", "v", "i" }, "<C-s>", "<Esc>:w<CR>", { desc = "Save buffer" })

-- window management
keymap.set("n", "<leader>wh", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wv", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current window" })

keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>td", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "]t", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "[t", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- quit all
keymap.set({ "n", "v" }, "<leader>qq", "<cmd>qa<CR>", { desc = "Quit" })

-- move highlighted blocks up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle when paging up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching for words
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- remove highlight after search
keymap.set({ "n", "v" }, "<leader>/", ":noh<CR>", { desc = "Remove highlight after search" })
