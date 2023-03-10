return {
  "nvim-neorg/neorg",
  run = ":Neorg sync-parsers", -- This is the important bit!
  cmd = { "Neorg" },
  keys = {
    { "<leader>nn", "<cmd>Neorg workspace notes<cr>", desc = "Neorg set workspace" },
    { "<leader>n;", "<cmd>Neorg return<cr>", desc = "Neorg close buffers" },
    { "<leader>n.", "<cmd>Neorg toggle-concealer<cr>", desc = "Neorg toggle concealer" },
    { "<leader>ni", "<cmd>Neorg journal toc<cr>", desc = "Neorg journal index" },
    { "<leader>nt", "<cmd>Neorg journal today<cr>", desc = "Neorg journal today" },
    { "<leader>ny", "<cmd>Neorg journal yesterday<cr>", desc = "Neorg journal yesterday" },
    { "<leader>np", "<cmd>Neorg presenter start<cr>", desc = "Neorg presenter" },
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
      ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.norg.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.integrations.nvim-cmp"] = {},
      ["core.syntax"] = {},
      ["core.integrations.treesitter"] = {},
      ["core.norg.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.norg.journal"] = {
        config = {
          journal_folder = "journal",
          strategy = "flat",
          workspace = "notes",
        },
      },
    },
  },
}
