return {
  {
    "akinsho/toggleterm.nvim",
    config = true,
    version = "*",
    keys = {
      {
        "<leader>ft",
        "<cmd>ToggleTerm size=60 direction=vertical<cr>",
        desc = "Open terminal",
      },
    },
  },
}
