local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({
        buffer = bufnr,
        omit = { '<F2>', '<F3>', '<F4>' }
    })

    -- format code in current buffer
    vim.keymap.set({ 'n', 'x' }, '<leader>ff', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)

    -- rename all references to the symbol under the cursor
    vim.keymap.set({ 'n', 'x' }, '<leader>rr', "<cmd>lua vim.lsp.buf.rename()<CR>")

    -- select code action available at the current cursor position
    vim.keymap.set({ 'n', 'x' }, '<leader>ca', "<cmd>lua vim.lsp.buf.code_action()<CR>")
end)

lsp.ensure_installed({
    'lua_ls',
    'rust_analyzer', -- must install Rust
})

-- Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
