return {
  { "mfussenegger/nvim-dap" },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup("/usr/bin/python")
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = function()
      local dap = require("dap")
      dap.adapters.lldb = {
        type = "executable",
        command = "/usr/bin/lldb-vscode-10", -- adjust as needed, must be absolute path
        name = "lldb",
      }
      dap.configurations.cpp = {
        {
          name = "Launch",
          type = "lldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
          -- 💀
          -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
          --
          --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
          --
          -- Otherwise you might get the following error:
          --
          --    Error on launch: Failed to attach to the target process
          --
          -- But you should be aware of the implications:
          -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
          -- runInTerminal = false,
        },
      }
    end,
    keys = function()
      local dap, dapui = require("dap"), require("dapui")
      return {
        { "<leader>dd", dapui.toggle, desc = "Toggle debugger" },
        { "<leader>dk", dap.continue, desc = "Toggle continue" },
        { "<leader>db", dap.toggle_breakpoint, desc = "Set breakpoint" },
        { "<leader>dn", dap.step_into, desc = "Step into" },
        { "<leader>ds", dap.step_over, desc = "Step over" },
        { "<leader>du", dap.step_out, desc = "Step out" },
      }
    end,
  },
}
