vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted blocks up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- delete current line while keep cursor at the same place
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle when paging up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching for words
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- do not overwrite clipboard when pasting over text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- remove function of Q; do not let it quit nvim
vim.keymap.set("n", "Q", "<nop>")

-- -- quick fix navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- start replacing all occurences of the word cursor is at
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- split and close window
vim.keymap.set("n", "<leader>wv", "<cmd>sp<CR>")
vim.keymap.set("n", "<leader>wh", "<cmd>vs<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
