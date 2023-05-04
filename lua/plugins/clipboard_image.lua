return {
  "ekickx/clipboard-image.nvim",
  opts = {
    default = {
      img_dir = "images",
      img_dir_txt = "images",
      img_name = function()
        return os.date("%Y-%m-%d-%H-%M-%S")
      end,
      affix = "{%s}[image]",
    },
  },
}
