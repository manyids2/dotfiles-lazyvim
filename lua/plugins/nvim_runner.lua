return {
  "CRAG666/code_runner.nvim",
  cmds = { "RunCode", "RunFile", "RunProject", "RunClose" },
  keys = {
    { "<leader>mp", "<cmd>RunProject<cr>", desc = "Make project" },
    { "<leader>mq", "<cmd>RunClose<cr>",   desc = "Close runner" },
  },
  opts = {
    -- choose default mode (valid term, tab, float, toggle, buf)
    mode = "term",
    -- Focus on runner window(only works on toggle, term and tab mode)
    focus = true,
    -- startinsert (see ':h inserting-ex')
    startinsert = false,
    term = {
      --  Position to open the terminal, this option is ignored if mode is tab
      position = "bot",
      -- window size, this option is ignored if tab is true
      size = 8,
    },
    float = {
      -- Key that close the code_runner floating window
      close_key = "<ESC>",
      -- Window border (see ':h nvim_open_win')
      border = "none",
      -- Num from `0 - 1` for measurements
      height = 0.8,
      width = 0.8,
      x = 0.5,
      y = 0.5,
      -- Highlight group for floating window/border (see ':h winhl')
      border_hl = "FloatBorder",
      float_hl = "Normal",
      -- Transparency (see ':h winblend')
      blend = 0,
    },
    -- filetype_path = "", -- No default path defined
    filetype = {
      javascript = "npm run dev",
      cpp = "make",
      python = "python",
      sh = "bash",
    },
    -- project_path = "", -- No default path defined
    project = {
      ["/home/x/fd/code/wsi-stuff/wsi_timg"] = {
        name = "wsi_timg",
        description = "Show wsis in timg",
        file_name = "wsi_timg",
        command = "make build",
      },
    },
  },
}