-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move highlighted blocks up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle when paging up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching for words
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- do not overwrite clipboard when pasting over text
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting clipboard" })

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })

-- split and close window
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.set("n", "<leader>wv", "<cmd>sp<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wh", "<cmd>vs<CR>", { desc = "Split window horizontally" })

-- open file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open File Explorer" })
