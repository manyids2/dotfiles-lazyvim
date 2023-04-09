return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      globalstatus = false,
      disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
    },
    sections = {
      lualine_a = { { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } } },
      lualine_b = {},
      lualine_c = {},
      lualine_y = {},
      lualine_z = {},
    },
    extensions = { "neo-tree" },
  },
}
