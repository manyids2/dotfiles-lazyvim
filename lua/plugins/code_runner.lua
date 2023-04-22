return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunFile" },
  keys = {
    { "<leader>rf", "<cmd>RunFile<cr>", desc = "RunFile" },
  },
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "ipython -i --no-autoindent",
      },
      mode = "term",
      term = {
        position = "vertical",
        size = 80,
      },
    })
  end,
}
