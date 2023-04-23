-- need prettier and LSP plugins

-- format code in current buffer
vim.keymap.set({ 'n', 'x' }, '<leader>ff', function()
    -- for the following filetypes, prettier is used instead
    if vim.bo.filetype == "css" or
        vim.bo.filetype == "graphql" or
        vim.bo.filetype == "html" or
        vim.bo.filetype == "javascript" or
        vim.bo.filetype == "javascriptreact" or
        vim.bo.filetype == "json" or
        vim.bo.filetype == "less" or
        vim.bo.filetype == "markdown" or
        vim.bo.filetype == "scss" or
        vim.bo.filetype == "typescript" or
        vim.bo.filetype == "typescriptreact" or
        vim.bo.filetype == "yaml"
    then
        vim.cmd('Prettier')
    else
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end
end)
