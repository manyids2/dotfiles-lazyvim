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

map("n", "<leader>lz", "<cmd>:Lazy<cr>", { desc = "Lazy" })
map("n", "<M-d>", "<cmd>:Navbuddy<cr>", { desc = "Navbuddy" })
map("n", "<M-f>", "<cmd>silent ZenMode<cr>", { desc = "Zen mode" })
map("n", "+", "<cmd>set wh=999<cr><cmd>set wiw=999<cr><cmd>wincmd |<cr><cmd>wincmd _<cr>", { desc = "Maximize splits" })
map("n", "=", "<cmd>set wh=10<cr><cmd>set wiw=10<cr><cmd>wincmd =<cr>", { desc = "Equalize splits" })

-- various quits
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Quit without saving" })
map("n", "<C-q>", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader><C-q>", "<cmd>bd!<cr>", { desc = "Delete buffer" })

-- split management
map("n", "<tab>", "<cmd>wincmd w<cr>", { desc = "Next window" })
map("n", "<S-tab>", "<cmd>wincmd W<cr>", { desc = "Prev window" })
map("n", "+", "<cmd>set wh=999<cr><cmd>set wiw=999<cr>", { desc = "Maximize window" })
map("n", "=", "<cmd>set wh=10<cr><cmd>set wiw=10<cr><cmd>wincmd =<cr>", { desc = "Equalize windows" })

-- format buffer
map("n", "<C-e>", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format buffer" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>silent write<cr><esc>", { desc = "Save file" })

-- make directory
map("n", "<leader>mn", '<cmd>call mkdir(expand("%:p:h"), "p")<cr>', { desc = "Make directory" })

-- make docs
map("n", "<leader>mm", "<cmd>!make -C docs/ html<cr>", { desc = "Make docs" })
map("n", "<leader>mM", "<cmd>!rm -r docs/build; make -C docs/ html<cr>", { desc = "Make docs after deleting build" })

-- make using makefile
map("n", "<leader>mc", "<cmd>!cd build; make -j 6; cd ..;<cr>", { desc = "Make cmake project" })
map(
  "n",
  "<leader>mC",
  "<cmd>!rm -r build; mkdir build; cd build; cmake ..; make -j 6; cd ..;<cr>",
  { desc = "Force remake cmake project" }
)
map("n", "<leader>ml", "<cmd>copen<cr>", { desc = "Open compile errors" })

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

-- toggle background
map("n", "<leader>ub", function()
  local background = vim.o.background
  if background == "dark" then
    background = "light"
  else
    background = "dark"
  end
  vim.o.background = background
end, { desc = "Toggle background" })

local trouble = require("trouble.providers.telescope")
local telescope = require("telescope")
telescope.setup({
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
})
