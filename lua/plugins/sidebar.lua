return {
  "sidebar-nvim/sidebar.nvim",
  cmds = {
    "SidebarNvimToggle",
    "SidebarNvimClose",
    "SidebarNvimOpen",
    "SidebarNvimUpdate",
    "SidebarNvimResize",
    "SidebarNvimFocus",
  },
  keys = {
    { "<leader>aa", "<cmd>SidebarNvimToggle<cr>", desc = "Open/Close sidebar" },
  },
  opts = {
    disable_default_keybindings = 1,
    open = false,
    side = "left",
    initial_width = 35,
    hide_statusline = false,
    update_interval = 1000,
    sections = { "git" },
    section_separator = { "", "-----", "" },
    section_title_separator = { "" },
  },
}
