return {
  "nvim-neorg/neorg",
  run = ":Neorg sync-parsers", -- This is the important bit!
  cmd = { "Neorg" },
  keys = {
    { "<A-n>n", "<cmd>Neorg workspace notes<cr>", desc = "Neorg set workspace" },
    { "<A-n>;", "<cmd>Neorg return<cr>", desc = "Neorg close buffers" },
    { "<A-n>i", "<cmd>Neorg journal toc<cr>", desc = "Neorg journal index" },
    { "<A-n>t", "<cmd>Neorg journal today<cr>", desc = "Neorg journal today" },
    { "<A-n>y", "<cmd>Neorg journal yesterday<cr>", desc = "Neorg journal yesterday" },
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
