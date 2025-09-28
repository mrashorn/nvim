-- ~/.config/nvim/lua/plugins/telescope.lua

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      preview_width = 0.6,
    },
  },
})

