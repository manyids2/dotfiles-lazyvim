return {
  "svermeulen/vim-cutlass",
  config = function()
    vim.cmd [[nnoremap x d]]
    vim.cmd [[xnoremap x d]]
    vim.cmd [[nnoremap xx dd]]
    vim.cmd [[nnoremap X D]]
  end
}
