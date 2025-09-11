return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    scroll = { enabled = false },
    picker = {
      sources = {
        explorer = {
          -- uncomment line be low auto close explorer sidebar after selecting file
          -- auto_close = true,
        },
        files = {
          -- show hidden files when using fzf
          hidden = true,
        },
      },
      -- show hidden files in explorer
      hidden = true,
    },
  },
}
