return {
  "danymat/neogen",
  cmd = { "Neogen" },
  keys = {
    { "<leader>md", "<cmd>Neogen<cr>", desc = "Neogen documentation" },
  },
  opts = {
    languages = {
      python = {
        template = {
          annotation_convention = "google_docstrings",
        },
      },
    },
  },
}
