return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.prettier,
        nls.builtins.formatting.prettierd,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.black,
        nls.builtins.formatting.rustfmt,
      },
    }
  end,
}
