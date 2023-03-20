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

map("n", "<leader>ll", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- various quits
map("n", "<C-q>", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Quit without saving" })
map("n", "<leader><C-q>", "<cmd>bd!<cr>", { desc = "Delete buffer" })

-- format buffer
map("n", "<C-e>", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format buffer" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>silent write<cr><esc>", { desc = "Save file" })

-- zen mode
map("n", "<leader><C-l>", "<cmd>silent ZenMode<cr>", { desc = "Zen mode" })

-- make directory
map("n", "<leader>mn", '<cmd>call mkdir(expand("%:p:h"), "p")<cr>', { desc = "Make directory" })

-- make docs
map("n", "<leader>mm", "<cmd>!make -C docs/ html<cr>", { desc = "Make docs" })
map("n", "<leader>mM", "<cmd>!rm -r docs/build; make -C docs/ html<cr>", { desc = "Make docs after deleting build" })

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope grep_string<cr>", { desc = "Find string in all files" })
map("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Find marks" })

-- lazygit
map("n", "<leader>gG", function()
  Util.float_term({ "lazygit" }, { cwd = Util.get_root() })
end, { desc = "Lazygit (root dir)" })
map("n", "<leader>gw", "<cmd>Gwrite<cr>", { desc = "Write to git" })

-- toggle format on save
map("n", "<leader>uf", require("lazyvim.plugins.lsp.format").toggle, { desc = "Toggle format on Save" })

-- toggle spelling
map("n", "<leader>us", function()
  Util.toggle("spell", true)
end, { desc = "Toggle Spelling" })

-- toggle wrap
map("n", "<leader>uw", function()
  Util.toggle("wrap", true)
end, { desc = "Toggle Word Wrap" })

-- toggle numbers
map("n", "<leader>ul", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })

-- toggle diagnostics -- modified source
map("n", "<leader>ud", Util.toggle_diagnostics, { desc = "Toggle Diagnostics" })

-- toggle conceallevel
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uc", function()
  Util.toggle("conceallevel", false, { 0, conceallevel })
end, { desc = "Toggle Conceal" })
