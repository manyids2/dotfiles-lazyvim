-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.scrolloff = 15
opt.shortmess:append({ W = true })

opt.foldmethod = "expr"
opt.foldlevel = 99
opt.modelines = 1
vim.cmd([[set foldexpr=nvim_treesitter#foldexpr()]])
