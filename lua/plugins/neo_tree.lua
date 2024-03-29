return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    { "<A-e>", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
  },
  optional = true,
  opts = function(_, opts)
    opts.open_files_do_not_replace_types = opts.open_files_do_not_replace_types
      or { "terminal", "Trouble", "qf", "Outline" }
    table.insert(opts.open_files_do_not_replace_types, "edgy")
  end,
}
