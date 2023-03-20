return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-python",
  },
  keys = {
    {
      "<leader>tr",
      function()
        require("neotest").run.run()
      end,
      desc = "Neotest run nearest",
    },
    {
      "<leader>tf",
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Neotest run this file",
    },
    {
      "<leader>td",
      function()
        require("neotest").run.run({ vim.fn.expand("%"), strategy = "dap" })
      end,
      desc = "Neotest run this file with dap",
    },
    {
      "<leader>ts",
      function()
        require("neotest").run.stop()
      end,
      desc = "Neotest stop",
    },
    {
      "<leader>tt",
      function()
        require("neotest").output.open({ enter = true })
      end,
      desc = "Neotest open output",
    },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
          args = { "--capture=no", "-s" },
          runner = "pytest",
        }),
      },
    })
  end,
}
