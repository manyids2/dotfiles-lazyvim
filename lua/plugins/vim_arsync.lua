return {
  {
    "KenN7/vim-arsync",
    dependencies = {
        {'prabirshrestha/async.vim'}
    },
    cmd = { "ARshowConf", "ARsyncUp", "ARsyncUpDelete", "ARsyncDown" },
    keys = {
      { "<leader>gg", "<cmd>ARsyncUpDelete<cr>", desc = "ARsyncUpDelete" },
      { "<leader>ge", "<cmd>edit /home/x/code/rsync/rsync.sh<cr>", desc = "Edit rsync.sh" },
      { "<leader>gl", "<cmd>!/home/x/code/rsync/rsync.sh<cr>", desc = "Run rsync.sh" },
    },
  },
}
