return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunFile", "VtrSendCommandToRunner", "VtrOpenRunner", "VtrKillRunner" },
  dependencies = { "christoomey/vim-tmux-runner" },
  keys = {
    { "<leader>rf", "<cmd>RunFile<cr>", desc = "RunFile" },
    { "<leader>rt", "<cmd>VtrSendCommandToRunner<cr>", desc = "Run file in tmux" },
    { "<leader>rx", "<cmd>VtrKillRunner<cr>", desc = "Kill runner" },
    { "<leader>ro", "<cmd>VtrOpenRunner { 'orientation': 'h', 'percentage': '50' }<cr>", desc = "Open runner" },
    { "<leader>r;", "<cmd>VtrFocusRunner<cr>", desc = "Focus runner" },
  },
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "ipython -i --no-autoindent",
        rust = { "cargo run &&", "ls" },
      },
      mode = "term",
      term = {
        position = "vertical",
        size = 80,
      },
    })

    vim.g.VtrOrientation = "h"
    vim.g.VtrPercentage = 30
  end,
}
