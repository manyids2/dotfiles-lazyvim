return {
  {
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = true,
    keys = {
      {
        "<leader>ft",
        "<cmd>ToggleTerm size=25 direction=horizontal<cr>",
        desc = "Open terminal",
      },
    },
  },
}
