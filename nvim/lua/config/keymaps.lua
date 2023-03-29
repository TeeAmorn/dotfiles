-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move highlighted block up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted block up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted block down" })

-- window management
vim.keymap.set("n", "<leader>wh", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wv", "<C-w>s", { desc = "Split window horizontally" })

-- keep cursor in the middle when paging up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })

-- keep cursor in the middle when searching for words
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search word" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search word" })
