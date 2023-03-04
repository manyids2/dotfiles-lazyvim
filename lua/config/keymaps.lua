local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = true
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- ctrl-q to delete buffer
map("n", "<C-q>", "<cmd>q<cr>", { desc = "Delete buffer" })

-- format buffer
map("n", "<C-e>", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format buffer" })

map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>silent write<cr><esc>", { desc = "Save file" })
map("n", "<leader><C-l>", "<cmd>silent ZenMode<cr>", { desc = "Zen mode" })

map("n", "<leader>uf", require("lazyvim.plugins.lsp.format").toggle, { desc = "Toggle format on Save" })

map("n", "<leader>us", function()
  Util.toggle("spell", true)
end, { desc = "Toggle Spelling" })

map("n", "<leader>uw", function()
  Util.toggle("wrap", true)
end, { desc = "Toggle Word Wrap" })

map("n", "<leader>ul", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })

map("n", "<leader>ud", Util.toggle_diagnostics(true), { desc = "Toggle Diagnostics" })

local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uc", function()
  Util.toggle("conceallevel", false, { 0, conceallevel })
end, { desc = "Toggle Conceal" })
