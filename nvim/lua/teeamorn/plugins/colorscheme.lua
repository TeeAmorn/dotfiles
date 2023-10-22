return {
    "Mofiqul/dracula.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
        vim.cmd("colorscheme dracula")
    end,
}
