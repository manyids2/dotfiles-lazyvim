return {
  "michaelb/sniprun",
  enabled = false,
  run = "bash ./install.sh",
  -- cmds = { "SnipRun", "SnipClose", "SnipReset", "SnipReplMemoryClean" },
  -- keys = {
  --   { "<leader><C-t>j", "<cmd>SnipRun<cr>",             desc = "SnipRun" },
  --   { "<leader><C-t>q", "<cmd>SnipClose<cr>",           desc = "SnipClose" },
  --   { "<leader><C-t>r", "<cmd>SnipReset<cr>",           desc = "SnipReset" },
  --   { "<leader><C-t>m", "<cmd>SnipReplMemoryClean<cr>", desc = "SnipReplMemoryClean" },
  -- },
  opts = {
    display = { "Terminal" },
    display_options = {
      terminal_width = 45,
    },
    binary_path = "/home/x/.local/share/nvim/lazy/sniprun/target/release/sniprun",
    -- repl_enable = { "Python3_fifo" },
    -- interpreter_options = {
    --   Python3_fifo = {
    --     interpreter = "python",
    --     venv = { "/home/x/code/el_pipeline/.venv", "/home/x/code/lgon-backend/.venv" },
    --     error_truncate = "auto",
    --   },
    -- },
  },
}
