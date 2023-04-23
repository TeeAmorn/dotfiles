local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({
        buffer = bufnr,
        omit = { '<F2>', '<F3>', '<F4>' }
    })

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

    -- rename all references to the symbol under the cursor
    vim.keymap.set({ 'n', 'x' }, '<leader>rr', "<cmd>lua vim.lsp.buf.rename()<CR>")

    -- select code action available at the current cursor position
    vim.keymap.set({ 'n', 'x' }, '<leader>ca', "<cmd>lua vim.lsp.buf.code_action()<CR>")
end)

lsp.ensure_installed({
    'lua_ls',
    'rust_analyzer', -- must install Rust
    'tsserver',      -- npm install -g typescript typescript-language-server
    'eslint',        -- npm install -g vscode-langservers-extracted
    'tailwindcss'    -- npm install -g @tailwindcss/language-server
})

-- Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
