return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon"):list():append()
      end,
      desc = "Harpoon file",
    },
    { "<leader>H", mode = { "n", "x", "o" }, false },
  },
}
