-- ~/.config/nvim/lua/plugins/treesitter.lua

require("nvim-treesitter.configs").setup({
  ensure_installed = { "cpp", "python" },
  highlight = {
    enable = true,
  },
})

