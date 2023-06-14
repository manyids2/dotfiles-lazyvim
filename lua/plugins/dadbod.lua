return {
  {
    "https://github.com/tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    cmd = { "DB", "DBUIToggle", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
    keys = {
      { "<leader>DD", "<cmd>DB ", desc = "Dadbod" },
      { "<leader>Du", "<cmd>DBUIToggle<cr>", desc = "Dadbod" },
      { "<leader>Df", "<cmd>DBUIFindBuffer<cr>", desc = "Dadbod" },
      { "<leader>Dr", "<cmd>DBUIRenameBuffer<cr>", desc = "Dadbod" },
      { "<leader>Dq", "<cmd>DBUILastQueryInfo<cr>", desc = "Dadbod" },
    },
    config = function()
      local function db_completion()
        require("cmp").setup.buffer({ sources = { { name = "vim-dadbod-completion" } } })
      end

      vim.g.db_ui_save_location = vim.fn.stdpath("config") .. require("plenary.path").path.sep .. "db_ui"
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "db", "sql" },
        command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "db", "sql", "mysql", "plsql" },
        callback = function()
          vim.schedule(db_completion)
        end,
      })
    end,
  },
}
