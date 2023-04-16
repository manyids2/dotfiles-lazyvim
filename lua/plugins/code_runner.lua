return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunFile" },
  keys = {
    { "<leader>rf", "<cmd>RunFile<cr>", desc = "RunFile" },
  },
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "source .venv/bin/activate.fish; ipython --profile (path basename (pwd))",
      },
      mode = "term",
      term = {
        position = "vertical",
        size = 80,
      },
    })
  end,
}
