return {
  "L3MON4D3/LuaSnip",
  cmd = {"LuaSnipListAvailable", "LuaSnipUnlinkCurrent"},
  keys = {
    { "<leader>le", require("luasnip.loaders").edit_snippet_files, desc = "Edit snippets" },
  },
  opts = {},
}
