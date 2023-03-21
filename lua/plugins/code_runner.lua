return {
  "CRAG666/code_runner.nvim",
  cmds = { "RunCode", "RunFile", "RunProject", "RunClose", "CRFiletype", "CRProjects" },
  keys = {
    { "<leader>r", "<cmd>RunCode<cr>", desc = "RunCode" },
    { "<leader>rf", "<cmd>RunFile<cr>", desc = "RunFile" },
    { "leader>rft", "<cmd>RunFile tab<cr>", desc = "RunFile" },
    { "leader>rp", "<cmd>RunProject<cr>", desc = "RunProject" },
    { "leader>rc", "<cmd>RunClose<cr>", desc = "RunClose" },
    { "leader>rrf", "<cmd>CRFiletype<cr>", desc = "CRFiletype" },
    { "leader>rrp", "<cmd>CRProjects<cr>", desc = "CRProjects" },
  },
  opts = {
    filetype = {
      python = "python ",
    },
  },
}
