local opt = vim.opt

-- local .nvim.lua file
opt.exrc = true

opt.scrolloff = 15
opt.shortmess:append({ W = true })

opt.foldmethod = "expr"
opt.foldlevel = 99
opt.modelines = 1
vim.cmd([[set foldexpr=nvim_treesitter#foldexpr()]])

opt.number = false
opt.relativenumber = false
opt.swapfile = false

local g = vim.g
g.python_host_prog = "/home/x/.config/nvim/.venv/bin/python"
g.python3_host_prog = "/home/x/.config/nvim/.venv/bin/python3"

opt.background = "light"

