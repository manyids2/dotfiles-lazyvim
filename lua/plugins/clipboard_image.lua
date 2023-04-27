return {
  "ekickx/clipboard-image.nvim",
  opts = {
    default = {
      img_dir = "images",
      img_name = function()
        vim.ui.input({ prompt = "Enter name: " }, function(input)
          return input
        end)
      end,
      affix = "<\n  %s\n>",
    },
  },
}
