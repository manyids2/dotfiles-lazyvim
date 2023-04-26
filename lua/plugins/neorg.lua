return {
  "nvim-neorg/neorg",
  ft="norg",
  build = ":Neorg sync-parsers",
  cmd = { "Neorg" },
  keys = {
    { "<leader>nn", "<cmd>Neorg workspace notes<cr>", desc = "Neorg set workspace" },
    { "<leader>n;", "<cmd>Neorg return<cr>", desc = "Neorg close buffers" },
    { "<leader>n.", "<cmd>Neorg toggle-concealer<cr>", desc = "Neorg toggle concealer" },
    { "<leader>ni", "<cmd>Neorg journal toc<cr>", desc = "Neorg journal index" },
    { "<leader>nt", "<cmd>Neorg journal today<cr>", desc = "Neorg journal today" },
    { "<leader>ny", "<cmd>Neorg journal yesterday<cr>", desc = "Neorg journal yesterday" },
    { "<leader>np", "<cmd>Neorg presenter start<cr>", desc = "Neorg presenter" },
    -- gtd
    { "gtd", "gtd", desc = "done" },
    { "gtu", "gtu", desc = "undone" },
    { "gtp", "gtp", desc = "pending" },
    { "gth", "gth", desc = "on_hold" },
    { "gtc", "gtc", desc = "cancelled" },
    { "gtr", "gtr", desc = "recurring" },
    { "gti", "gti", desc = "important" },
  },
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.export"] = {},
      ["core.presenter"] = {
        config = {
          zen_mode = "zen-mode",
        },
      },
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.integrations.nvim-cmp"] = {},
      ["core.syntax"] = {},
      ["core.integrations.treesitter"] = {},
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.journal"] = {
        config = {
          journal_folder = "journal",
          strategy = "flat",
          workspace = "notes",
        },
      },
    },
  },
}
